# HEIN11090-2024-25

HEIN11090 - Applied Research design in data science for health and social care 2024-2025

## Data Dictionary
| Variable Name                | Data Type | Description                                                      |
| ---------------------------- | --------- | ---------------------------------------------------------------- |
| `CSNumber`                   | String    | Service's CS number                                              |
| `Combined_Service_`          | Factor    | 'Yes' if the service is combined with another CS number          |
| `CaseNumber_Combined`        | String    | CS number of combined service (where 'Combined_Service_'='Yes'   |
| `CareService`                | Factor    | Type of Care Service                                             |
| `Subtype`                    | Factor    | Care Service Sub-type                                            |
| `ServiceType`                | Factor    | Service Provider type (e.g. Private, Voluntary, Local Authority) |
| `ServiceName`                | String    | Name of the Care Service                                         |
| `Address_line_1`             | String    | Address of the care service (line 1)                             |
| `Address_line_2`             | String    | Address of the care service (line 2)                             |
| `Address_line_3`             | String    | Address of the care service (line 3)                             |
| `Address_line_4`             | String    | Address of the care service (line 4)                             |
| `Service_town`               | String    | Town in which the service is based                               |
| `Service_Postcode`           | String    | Postcode for the service                                         |
| `ManagerName     `           | String    | EMPTY                                                            |
| `Service_Phone_Number`       | String    | Phone number for the service                                     |
| `Eforms_email_address`       | String    | Contact email address for the service                            |
| `SP_number`                  | String    | Identifier for service provider                                  |
| `ServiceProvider`            | String    | Name of the Service Provider                                     |
| `Provided_by_Local_Authority`| Factor    | 'Yes" if provided by Local Authority                             |
| `ServiceStatus`              | Factor    | Service status (e.g. Active, Inactive, Propositional)            |
| `DateReg`                    | Date      | UNKNOWN                                                          |
| `Date_Reg`                   | String    | Date that the service registered (format yyyy\mm)                |
| `SIMD_rank`                  | String    | Scottish Index of Multiple Deprivation 2016 (SIMD2016) ranking   |
| `SIMD2020_decile`            | Integer   | SIMD 2020 decile (1–10) for the area the service is located in   |
| `Datazone`                   | String    | UNKNOWN                                                          |
| `Integration_Authority_Name` | String    | Authority that the service is based in                           |
