

--SELECT *
--FROM `porfolioprojects-410613.Covid.Vaccinations``
--order by 3,4

SELECT location,date,total_cases,new_cases,total_deaths,population
From `porfolioprojects-410613.Covid.Deaths`
where continent is not null
order by 1,2

--Looking at Total Cases vs Total Deaths 
--Shows Likelihood of dying if you get infected in your country
SELECT location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as Deathpercentage 
From `porfolioprojects-410613.Covid.Deaths`
where location like '%Sweden%'
and where continent is not null
order by 1,2

-- Loking at total cases and Population 
-- Show what percentage of Population was infected by Covid
SELECT location,date,total_cases,population,(total_cases/population)*100 as Casepercentage 
From `porfolioprojects-410613.Covid.Deaths`
where continent is not null
and where location like '%Sweden%'

order by 1,2

--Countries with highest Infection Rate compared to Population

SELECT location,MAX(total_cases) as HighestInfectionCount,population,Max((total_cases/population))*100 as Casepercentage 
From `porfolioprojects-410613.Covid.Deaths`
--where location like '%Sweden%'
where continent is not null
group by location,population
order by Casepercentage desc

--Showing Countries with Highest Death Count Per Population

SELECT location,MAX(total_deaths) as TotalDeathCount
From `porfolioprojects-410613.Covid.Deaths`
--where location like '%Sweden%'
where continent is not null
group by location
order by TotalDeathCount desc

--Showing Continents with Highest Death Count Per Population
--Showing Continents with the Highest Death Count per population 
SELECT location,MAX(total_deaths) as TotalDeathCount
From `porfolioprojects-410613.Covid.Deaths`
--where location like '%Sweden%'
where continent is not null
group by continent
order by TotalDeathCount desc

--Global Numbers

SELECT date,sum(new_cases),sum(new_deaths),SUM(new_deaths)/SUM(new_cases)*100 as Deathpercentage 
From `porfolioprojects-410613.Covid.Deaths`
--where location like '%Sweden%'
where continent is not null
group by date
order by 1,2

SELECT date,sum(new_cases),sum(new_deaths),SUM(new_deaths)/SUM(new_cases)*100 as Deathpercentage 
From `porfolioprojects-410613.Covid.Deaths`
--where location like '%Sweden%'
where continent is not null
--group by date
order by 1,2

-- Looking at Total Population vs Vaccinations
Select* 
From `porfolioprojects-410613.Covid.Deaths` dea
JOIN `porfolioprojects-410613.Covid.Vaccinations` vac
  ON dea.location = vac.location
  and dea.date = vac.date


Select dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations
From `porfolioprojects-410613.Covid.Deaths` dea
JOIN `porfolioprojects-410613.Covid.Vaccinations` vac
  ON dea.location = vac.location
  and dea.date = vac.date
where dea.continent is not null
order by 2,3

Select dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations,SUM(convert(int,vac.new_vaccinations)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date)
From `porfolioprojects-410613.Covid.Deaths` dea
JOIN `porfolioprojects-410613.Covid.Vaccinations` vac
  ON dea.location = vac.location
  and dea.date = vac.date
where dea.continent is not null
order by 2,3

--Using CTE
WITH PopvsVac AS (
  SELECT
    dea.continent,
    dea.location,
    dea.date,
    dea.population,
    vac.new_vaccinations
  FROM
    `porfolioprojects-410613.Covid.Deaths` dea
  JOIN
    `porfolioprojects-410613.Covid.Vaccinations` vac
  ON
    dea.location = vac.location
    AND dea.date = vac.date
  WHERE
    dea.continent IS NOT NULL
)

SELECT
  continent,
  location,
  date,
  population,
  new_vaccinations,
  RollingPeopleVaccinated,
  (RollingPeopleVaccinated / population) * 100 AS Percentage
FROM (
  SELECT
    continent,
    location,
    date,
    population,
    new_vaccinations,
    SUM(CAST(new_vaccinations AS INT64)) OVER (PARTITION BY location ORDER BY location, date) AS RollingPeopleVaccinated
  FROM
    PopvsVac)

--Temp Table
Drop Table if exists `porfolioprojects-410613.Covid.PercentPopulationVaccinated`
CREATE TABLE `porfolioprojects-410613.Covid.PercentPopulationVaccinated` (
    Continent STRING,
    Date DATETIME,
    Population NUMERIC,
    New_vaccinations NUMERIC,
    RollingPeopleVaccinated NUMERIC
);

INSERT INTO `porfolioprojects-410613.Covid.PercentPopulationVaccinated`
SELECT
    dea.continent,
    dea.date,
    dea.population,
    CAST(vac.new_vaccinations AS NUMERIC), -- Cast the string to NUMERIC
    SUM(CAST(vac.new_vaccinations AS INT64)) OVER (PARTITION BY dea.location ORDER BY dea.date) as RollingPeopleVaccinated
FROM
    `porfolioprojects-410613.Covid.Deaths` dea
JOIN
    `porfolioprojects-410613.Covid.Vaccinations` vac
ON
    dea.location = vac.location
    AND dea.date = vac.date;

SELECT *, (RollingPeopleVaccinated / Population) * 100 AS PercentPopulationVaccinated
FROM `porfolioprojects-410613.Covid.PercentPopulationVaccinated`;

--Creating Store data for later visualizations
CREATE OR REPLACE VIEW `porfolioprojects-410613.Covid.PercentPopulationVaccinated2` AS
SELECT
    dea.continent,
    dea.date,
    dea.population,
    CAST(vac.new_vaccinations AS NUMERIC) AS New_vaccinations,
    SUM(CAST(vac.new_vaccinations AS INT64)) OVER (PARTITION BY dea.location ORDER BY dea.date) as RollingPeopleVaccinated
FROM
    `porfolioprojects-410613.Covid.Deaths` dea
JOIN
    `porfolioprojects-410613.Covid.Vaccinations` vac
ON
    dea.location = vac.location
    AND dea.date = vac.date
WHERE
    dea.continent IS not NULL;

--Last View
Select *
From `porfolioprojects-410613.Covid.PercentPopulationVaccinated2`

