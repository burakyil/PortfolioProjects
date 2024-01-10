{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red44\green55\blue61;\red204\green0\blue78;\red255\green255\blue255;
\red39\green78\blue204;\red0\green0\blue0;\red21\green129\blue62;\red238\green57\blue24;\red42\green55\blue62;
}
{\*\expandedcolortbl;;\cssrgb\c22745\c27843\c30588;\cssrgb\c84706\c10588\c37647;\cssrgb\c100000\c100000\c100000;
\cssrgb\c20000\c40392\c83922;\cssrgb\c0\c0\c0;\cssrgb\c5098\c56471\c30980;\cssrgb\c95686\c31765\c11765;\cssrgb\c21569\c27843\c30980;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --SELECT *\cf2 \cb1 \strokec2 \
\cf3 \cb4 \strokec3 --FROM `porfolioprojects-410613.Covid.Vaccinations``\cf2 \cb1 \strokec2 \
\cf3 \cb4 \strokec3 --order by 3,4\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 SELECT\cf2 \strokec2  \strokec6 location\strokec2 ,\cf5 \strokec5 date\cf2 \strokec2 ,\strokec6 total_cases\strokec2 ,\strokec6 new_cases\strokec2 ,\strokec6 total_deaths\strokec2 ,\strokec6 population\cb1 \strokec2 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 where\cf2 \strokec2  \strokec6 continent\strokec2  \cf5 \strokec5 is\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 null\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 order\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \cf8 \strokec8 1\cf2 \strokec2 ,\cf8 \strokec8 2\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --Looking at Total Cases vs Total Deaths \cf2 \cb1 \strokec2 \
\cf3 \cb4 \strokec3 --Shows Likelihood of dying if you get infected in your country\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 SELECT\cf2 \strokec2  \strokec6 location\strokec2 ,\cf5 \strokec5 date\cf2 \strokec2 ,\strokec6 total_cases\strokec2 ,\strokec6 total_deaths\strokec2 ,\cf9 \strokec9 (\cf2 \strokec6 total_deaths\cf9 \strokec9 /\cf2 \strokec6 total_cases\cf9 \strokec9 )*\cf8 \strokec8 100\cf2 \strokec2  \cf5 \strokec5 as\cf2 \strokec2  \strokec6 Deathpercentage\strokec2  \cb1 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 where\cf2 \strokec2  \strokec6 location\strokec2  \cf5 \strokec5 like\cf2 \strokec2  \cf7 \strokec7 '%Sweden%'\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 and\cf2 \strokec2  \cf5 \strokec5 where\cf2 \strokec2  \strokec6 continent\strokec2  \cf5 \strokec5 is\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 null\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 order\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \cf8 \strokec8 1\cf2 \strokec2 ,\cf8 \strokec8 2\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 -- Loking at total cases and Population \cf2 \cb1 \strokec2 \
\cf3 \cb4 \strokec3 -- Show what percentage of Population was infected by Covid\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 SELECT\cf2 \strokec2  \strokec6 location\strokec2 ,\cf5 \strokec5 date\cf2 \strokec2 ,\strokec6 total_cases\strokec2 ,\strokec6 population\strokec2 ,\cf9 \strokec9 (\cf2 \strokec6 total_cases\cf9 \strokec9 /\cf2 \strokec6 population\cf9 \strokec9 )*\cf8 \strokec8 100\cf2 \strokec2  \cf5 \strokec5 as\cf2 \strokec2  \strokec6 Casepercentage\strokec2  \cb1 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 where\cf2 \strokec2  \strokec6 continent\strokec2  \cf5 \strokec5 is\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 null\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 and\cf2 \strokec2  \cf5 \strokec5 where\cf2 \strokec2  \strokec6 location\strokec2  \cf5 \strokec5 like\cf2 \strokec2  \cf7 \strokec7 '%Sweden%'\cf2 \cb1 \strokec2 \
\
\cf5 \cb4 \strokec5 order\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \cf8 \strokec8 1\cf2 \strokec2 ,\cf8 \strokec8 2\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --Countries with highest Infection Rate compared to Population\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 SELECT\cf2 \strokec2  \strokec6 location\strokec2 ,\cf5 \strokec5 MAX\cf9 \strokec9 (\cf2 \strokec6 total_cases\cf9 \strokec9 )\cf2 \strokec2  \cf5 \strokec5 as\cf2 \strokec2  \strokec6 HighestInfectionCount\strokec2 ,\strokec6 population\strokec2 ,\cf5 \strokec5 Max\cf9 \strokec9 ((\cf2 \strokec6 total_cases\cf9 \strokec9 /\cf2 \strokec6 population\cf9 \strokec9 ))*\cf8 \strokec8 100\cf2 \strokec2  \cf5 \strokec5 as\cf2 \strokec2  \strokec6 Casepercentage\strokec2  \cb1 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --where location like '%Sweden%'\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 where\cf2 \strokec2  \strokec6 continent\strokec2  \cf5 \strokec5 is\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 null\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 group\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \strokec6 location\strokec2 ,\strokec6 population\cb1 \strokec2 \
\cf5 \cb4 \strokec5 order\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \strokec6 Casepercentage\strokec2  \cf5 \strokec5 desc\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --Showing Countries with Highest Death Count Per Population\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 SELECT\cf2 \strokec2  \strokec6 location\strokec2 ,\cf5 \strokec5 MAX\cf9 \strokec9 (\cf2 \strokec6 total_deaths\cf9 \strokec9 )\cf2 \strokec2  \cf5 \strokec5 as\cf2 \strokec2  \strokec6 TotalDeathCount\cb1 \strokec2 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --where location like '%Sweden%'\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 where\cf2 \strokec2  \strokec6 continent\strokec2  \cf5 \strokec5 is\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 null\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 group\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \strokec6 location\cb1 \strokec2 \
\cf5 \cb4 \strokec5 order\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \strokec6 TotalDeathCount\strokec2  \cf5 \strokec5 desc\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --Showing Continents with Highest Death Count Per Population\cf2 \cb1 \strokec2 \
\cf3 \cb4 \strokec3 --Showing Continents with the Highest Death Count per population \cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 SELECT\cf2 \strokec2  \strokec6 location\strokec2 ,\cf5 \strokec5 MAX\cf9 \strokec9 (\cf2 \strokec6 total_deaths\cf9 \strokec9 )\cf2 \strokec2  \cf5 \strokec5 as\cf2 \strokec2  \strokec6 TotalDeathCount\cb1 \strokec2 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --where location like '%Sweden%'\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 where\cf2 \strokec2  \strokec6 continent\strokec2  \cf5 \strokec5 is\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 null\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 group\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \strokec6 continent\cb1 \strokec2 \
\cf5 \cb4 \strokec5 order\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \strokec6 TotalDeathCount\strokec2  \cf5 \strokec5 desc\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --Global Numbers\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 SELECT\cf2 \strokec2  \cf5 \strokec5 date\cf2 \strokec2 ,\cf5 \strokec5 sum\cf9 \strokec9 (\cf2 \strokec6 new_cases\cf9 \strokec9 )\cf2 \strokec2 ,\cf5 \strokec5 sum\cf9 \strokec9 (\cf2 \strokec6 new_deaths\cf9 \strokec9 )\cf2 \strokec2 ,\cf5 \strokec5 SUM\cf9 \strokec9 (\cf2 \strokec6 new_deaths\cf9 \strokec9 )/\cf5 \strokec5 SUM\cf9 \strokec9 (\cf2 \strokec6 new_cases\cf9 \strokec9 )*\cf8 \strokec8 100\cf2 \strokec2  \cf5 \strokec5 as\cf2 \strokec2  \strokec6 Deathpercentage\strokec2  \cb1 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --where location like '%Sweden%'\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 where\cf2 \strokec2  \strokec6 continent\strokec2  \cf5 \strokec5 is\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 null\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 group\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \cf5 \strokec5 date\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 order\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \cf8 \strokec8 1\cf2 \strokec2 ,\cf8 \strokec8 2\cf2 \cb1 \strokec2 \
\
\cf5 \cb4 \strokec5 SELECT\cf2 \strokec2  \cf5 \strokec5 date\cf2 \strokec2 ,\cf5 \strokec5 sum\cf9 \strokec9 (\cf2 \strokec6 new_cases\cf9 \strokec9 )\cf2 \strokec2 ,\cf5 \strokec5 sum\cf9 \strokec9 (\cf2 \strokec6 new_deaths\cf9 \strokec9 )\cf2 \strokec2 ,\cf5 \strokec5 SUM\cf9 \strokec9 (\cf2 \strokec6 new_deaths\cf9 \strokec9 )/\cf5 \strokec5 SUM\cf9 \strokec9 (\cf2 \strokec6 new_cases\cf9 \strokec9 )*\cf8 \strokec8 100\cf2 \strokec2  \cf5 \strokec5 as\cf2 \strokec2  \strokec6 Deathpercentage\strokec2  \cb1 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --where location like '%Sweden%'\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 where\cf2 \strokec2  \strokec6 continent\strokec2  \cf5 \strokec5 is\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 null\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --group by date\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 order\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \cf8 \strokec8 1\cf2 \strokec2 ,\cf8 \strokec8 2\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 -- Looking at Total Population vs Vaccinations\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 Select\cf9 \strokec9 *\cf2 \strokec2  \cb1 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \strokec2  \strokec6 dea\cb1 \strokec2 \
\cf5 \cb4 \strokec5 JOIN\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Vaccinations`\cf2 \strokec2  \strokec6 vac\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4   \cf5 \strokec5 ON\cf2 \strokec2  \strokec6 dea.location\strokec2  = \strokec6 vac.location\cb1 \strokec2 \
\cb4   \cf5 \strokec5 and\cf2 \strokec2  \strokec6 dea.date\strokec2  = \strokec6 vac.date\cb1 \strokec2 \
\
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 Select\cf2 \strokec2  \strokec6 dea.continent\strokec2 ,\strokec6 dea.location\strokec2 ,\strokec6 dea.date\strokec2 ,\strokec6 dea.population\strokec2 ,\strokec6 vac.new_vaccinations\cb1 \strokec2 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \strokec2  \strokec6 dea\cb1 \strokec2 \
\cf5 \cb4 \strokec5 JOIN\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Vaccinations`\cf2 \strokec2  \strokec6 vac\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4   \cf5 \strokec5 ON\cf2 \strokec2  \strokec6 dea.location\strokec2  = \strokec6 vac.location\cb1 \strokec2 \
\cb4   \cf5 \strokec5 and\cf2 \strokec2  \strokec6 dea.date\strokec2  = \strokec6 vac.date\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 where\cf2 \strokec2  \strokec6 dea.continent\strokec2  \cf5 \strokec5 is\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 null\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 order\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \cf8 \strokec8 2\cf2 \strokec2 ,\cf8 \strokec8 3\cf2 \cb1 \strokec2 \
\
\cf5 \cb4 \strokec5 Select\cf2 \strokec2  \strokec6 dea.continent\strokec2 ,\strokec6 dea.location\strokec2 ,\strokec6 dea.date\strokec2 ,\strokec6 dea.population\strokec2 ,\strokec6 vac.new_vaccinations\strokec2 ,\cf5 \strokec5 SUM\cf9 \strokec9 (\cf2 \strokec6 convert\cf9 \strokec9 (\cf2 \strokec6 int\strokec2 ,\strokec6 vac.new_vaccinations\cf9 \strokec9 ))\cf2 \strokec2  \cf5 \strokec5 OVER\cf2 \strokec2  \cf9 \strokec9 (\cf5 \strokec5 PARTITION\cf2 \strokec2  \cf5 \strokec5 BY\cf2 \strokec2  \strokec6 dea.location\strokec2  \cf5 \strokec5 ORDER\cf2 \strokec2  \cf5 \strokec5 BY\cf2 \strokec2  \strokec6 dea.location\strokec2 , \strokec6 dea.date\cf9 \strokec9 )\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \strokec2  \strokec6 dea\cb1 \strokec2 \
\cf5 \cb4 \strokec5 JOIN\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.Vaccinations`\cf2 \strokec2  \strokec6 vac\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4   \cf5 \strokec5 ON\cf2 \strokec2  \strokec6 dea.location\strokec2  = \strokec6 vac.location\cb1 \strokec2 \
\cb4   \cf5 \strokec5 and\cf2 \strokec2  \strokec6 dea.date\strokec2  = \strokec6 vac.date\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 where\cf2 \strokec2  \strokec6 dea.continent\strokec2  \cf5 \strokec5 is\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 null\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 order\cf2 \strokec2  \cf5 \strokec5 by\cf2 \strokec2  \cf8 \strokec8 2\cf2 \strokec2 ,\cf8 \strokec8 3\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --Using CTE\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 WITH\cf2 \strokec2  \strokec6 PopvsVac\strokec2  \cf5 \strokec5 AS\cf2 \strokec2  \cf9 \strokec9 (\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4   \cf5 \strokec5 SELECT\cf2 \cb1 \strokec2 \
\cb4     \strokec6 dea.continent\strokec2 ,\cb1 \
\cb4     \strokec6 dea.location\strokec2 ,\cb1 \
\cb4     \strokec6 dea.date\strokec2 ,\cb1 \
\cb4     \strokec6 dea.population\strokec2 ,\cb1 \
\cb4     \strokec6 vac.new_vaccinations\cb1 \strokec2 \
\cb4   \cf5 \strokec5 FROM\cf2 \cb1 \strokec2 \
\cb4     \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \strokec2  \strokec6 dea\cb1 \strokec2 \
\cb4   \cf5 \strokec5 JOIN\cf2 \cb1 \strokec2 \
\cb4     \cf7 \strokec7 `porfolioprojects-410613.Covid.Vaccinations`\cf2 \strokec2  \strokec6 vac\cb1 \strokec2 \
\cb4   \cf5 \strokec5 ON\cf2 \cb1 \strokec2 \
\cb4     \strokec6 dea.location\strokec2  = \strokec6 vac.location\cb1 \strokec2 \
\cb4     \cf5 \strokec5 AND\cf2 \strokec2  \strokec6 dea.date\strokec2  = \strokec6 vac.date\cb1 \strokec2 \
\cb4   \cf5 \strokec5 WHERE\cf2 \cb1 \strokec2 \
\cb4     \strokec6 dea.continent\strokec2  \cf5 \strokec5 IS\cf2 \strokec2  \cf5 \strokec5 NOT\cf2 \strokec2  \cf5 \strokec5 NULL\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf9 \cb4 \strokec9 )\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 SELECT\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4   \strokec6 continent\strokec2 ,\cb1 \
\cb4   \strokec6 location\strokec2 ,\cb1 \
\cb4   \cf5 \strokec5 date\cf2 \strokec2 ,\cb1 \
\cb4   \strokec6 population\strokec2 ,\cb1 \
\cb4   \strokec6 new_vaccinations\strokec2 ,\cb1 \
\cb4   \strokec6 RollingPeopleVaccinated\strokec2 ,\cb1 \
\cb4   \cf9 \strokec9 (\cf2 \strokec6 RollingPeopleVaccinated\strokec2  \cf9 \strokec9 /\cf2 \strokec2  \strokec6 population\cf9 \strokec9 )\cf2 \strokec2  \cf9 \strokec9 *\cf2 \strokec2  \cf8 \strokec8 100\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  \strokec6 Percentage\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 FROM\cf2 \strokec2  \cf9 \strokec9 (\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4   \cf5 \strokec5 SELECT\cf2 \cb1 \strokec2 \
\cb4     \strokec6 continent\strokec2 ,\cb1 \
\cb4     \strokec6 location\strokec2 ,\cb1 \
\cb4     \cf5 \strokec5 date\cf2 \strokec2 ,\cb1 \
\cb4     \strokec6 population\strokec2 ,\cb1 \
\cb4     \strokec6 new_vaccinations\strokec2 ,\cb1 \
\cb4     \cf5 \strokec5 SUM\cf9 \strokec9 (\cf5 \strokec5 CAST\cf9 \strokec9 (\cf2 \strokec6 new_vaccinations\strokec2  \cf5 \strokec5 AS\cf2 \strokec2  \cf5 \strokec5 INT64\cf9 \strokec9 ))\cf2 \strokec2  \cf5 \strokec5 OVER\cf2 \strokec2  \cf9 \strokec9 (\cf5 \strokec5 PARTITION\cf2 \strokec2  \cf5 \strokec5 BY\cf2 \strokec2  \strokec6 location\strokec2  \cf5 \strokec5 ORDER\cf2 \strokec2  \cf5 \strokec5 BY\cf2 \strokec2  \strokec6 location\strokec2 , \cf5 \strokec5 date\cf9 \strokec9 )\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  \strokec6 RollingPeopleVaccinated\cb1 \strokec2 \
\cb4   \cf5 \strokec5 FROM\cf2 \cb1 \strokec2 \
\cb4     \strokec6 PopvsVac\cf9 \strokec9 )\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --Temp Table\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 Drop\cf2 \strokec2  \cf5 \strokec5 Table\cf2 \strokec2  \cf5 \strokec5 if\cf2 \strokec2  \cf5 \strokec5 exists\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.PercentPopulationVaccinated`\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 CREATE\cf2 \strokec2  \cf5 \strokec5 TABLE\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.PercentPopulationVaccinated`\cf2 \strokec2  \cf9 \strokec9 (\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \strokec6 Continent\strokec2  \cf5 \strokec5 STRING\cf2 \strokec2 ,\cb1 \
\cb4     \cf5 \strokec5 Date\cf2 \strokec2  \cf5 \strokec5 DATETIME\cf2 \strokec2 ,\cb1 \
\cb4     \strokec6 Population\strokec2  \strokec6 NUMERIC\strokec2 ,\cb1 \
\cb4     \strokec6 New_vaccinations\strokec2  \strokec6 NUMERIC\strokec2 ,\cb1 \
\cb4     \strokec6 RollingPeopleVaccinated\strokec2  \strokec6 NUMERIC\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf9 \cb4 \strokec9 )\cf2 \strokec2 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 INSERT\cf2 \strokec2  \cf5 \strokec5 INTO\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.PercentPopulationVaccinated`\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 SELECT\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \strokec6 dea.continent\strokec2 ,\cb1 \
\cb4     \strokec6 dea.date\strokec2 ,\cb1 \
\cb4     \strokec6 dea.population\strokec2 ,\cb1 \
\cb4     \cf5 \strokec5 CAST\cf9 \strokec9 (\cf2 \strokec6 vac.new_vaccinations\strokec2  \cf5 \strokec5 AS\cf2 \strokec2  \strokec6 NUMERIC\cf9 \strokec9 )\cf2 \strokec2 , \cf3 \strokec3 -- Cast the string to NUMERIC\cf2 \cb1 \strokec2 \
\cb4     \cf5 \strokec5 SUM\cf9 \strokec9 (\cf5 \strokec5 CAST\cf9 \strokec9 (\cf2 \strokec6 vac.new_vaccinations\strokec2  \cf5 \strokec5 AS\cf2 \strokec2  \cf5 \strokec5 INT64\cf9 \strokec9 ))\cf2 \strokec2  \cf5 \strokec5 OVER\cf2 \strokec2  \cf9 \strokec9 (\cf5 \strokec5 PARTITION\cf2 \strokec2  \cf5 \strokec5 BY\cf2 \strokec2  \strokec6 dea.location\strokec2  \cf5 \strokec5 ORDER\cf2 \strokec2  \cf5 \strokec5 BY\cf2 \strokec2  \strokec6 dea.date\cf9 \strokec9 )\cf2 \strokec2  \cf5 \strokec5 as\cf2 \strokec2  \strokec6 RollingPeopleVaccinated\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 FROM\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \strokec2  \strokec6 dea\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 JOIN\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \cf7 \strokec7 `porfolioprojects-410613.Covid.Vaccinations`\cf2 \strokec2  \strokec6 vac\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 ON\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \strokec6 dea.location\strokec2  = \strokec6 vac.location\cb1 \strokec2 \
\cb4     \cf5 \strokec5 AND\cf2 \strokec2  \strokec6 dea.date\strokec2  = \strokec6 vac.date\strokec2 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 SELECT\cf2 \strokec2  \cf9 \strokec9 *\cf2 \strokec2 , \cf9 \strokec9 (\cf2 \strokec6 RollingPeopleVaccinated\strokec2  \cf9 \strokec9 /\cf2 \strokec2  \strokec6 Population\cf9 \strokec9 )\cf2 \strokec2  \cf9 \strokec9 *\cf2 \strokec2  \cf8 \strokec8 100\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  \strokec6 PercentPopulationVaccinated\cb1 \strokec2 \
\cf5 \cb4 \strokec5 FROM\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.PercentPopulationVaccinated`\cf2 \strokec2 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --Creating Store data for later visualizations\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 CREATE\cf2 \strokec2  \cf5 \strokec5 OR\cf2 \strokec2  \cf5 \strokec5 REPLACE\cf2 \strokec2  \cf5 \strokec5 VIEW\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.PercentPopulationVaccinated2`\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 SELECT\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \strokec6 dea.continent\strokec2 ,\cb1 \
\cb4     \strokec6 dea.date\strokec2 ,\cb1 \
\cb4     \strokec6 dea.population\strokec2 ,\cb1 \
\cb4     \cf5 \strokec5 CAST\cf9 \strokec9 (\cf2 \strokec6 vac.new_vaccinations\strokec2  \cf5 \strokec5 AS\cf2 \strokec2  \strokec6 NUMERIC\cf9 \strokec9 )\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  \strokec6 New_vaccinations\strokec2 ,\cb1 \
\cb4     \cf5 \strokec5 SUM\cf9 \strokec9 (\cf5 \strokec5 CAST\cf9 \strokec9 (\cf2 \strokec6 vac.new_vaccinations\strokec2  \cf5 \strokec5 AS\cf2 \strokec2  \cf5 \strokec5 INT64\cf9 \strokec9 ))\cf2 \strokec2  \cf5 \strokec5 OVER\cf2 \strokec2  \cf9 \strokec9 (\cf5 \strokec5 PARTITION\cf2 \strokec2  \cf5 \strokec5 BY\cf2 \strokec2  \strokec6 dea.location\strokec2  \cf5 \strokec5 ORDER\cf2 \strokec2  \cf5 \strokec5 BY\cf2 \strokec2  \strokec6 dea.date\cf9 \strokec9 )\cf2 \strokec2  \cf5 \strokec5 as\cf2 \strokec2  \strokec6 RollingPeopleVaccinated\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 FROM\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \cf7 \strokec7 `porfolioprojects-410613.Covid.Deaths`\cf2 \strokec2  \strokec6 dea\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 JOIN\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \cf7 \strokec7 `porfolioprojects-410613.Covid.Vaccinations`\cf2 \strokec2  \strokec6 vac\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 ON\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \strokec6 dea.location\strokec2  = \strokec6 vac.location\cb1 \strokec2 \
\cb4     \cf5 \strokec5 AND\cf2 \strokec2  \strokec6 dea.date\strokec2  = \strokec6 vac.date\cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 WHERE\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \strokec6 dea.continent\strokec2  \cf5 \strokec5 IS\cf2 \strokec2  \cf5 \strokec5 not\cf2 \strokec2  \cf5 \strokec5 NULL\cf2 \strokec2 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 --Last View\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 Select\cf2 \strokec2  \cf9 \strokec9 *\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 From\cf2 \strokec2  \cf7 \strokec7 `porfolioprojects-410613.Covid.PercentPopulationVaccinated2`\cf2 \cb1 \strokec2 \
\
\
}