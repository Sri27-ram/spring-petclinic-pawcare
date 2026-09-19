# PawCare Clinic

PawCare Clinic is a veterinary practice management sample application built with [Spring Boot](https://spring.io/guides/gs/spring-boot) and [Thymeleaf](https://www.thymeleaf.org/). It lets a clinic keep track of owners, their pets, visit history, and the vets on staff.

## Run PawCare Clinic locally

The application is built using [Maven](https://spring.io/guides/gs/maven/) or [Gradle](https://spring.io/guides/gs/gradle/). Java 17 or later is required for the build, and the application can run with Java 17 or newer.

Clone the project locally:

```bash
git clone https://github.com/Sri27-ram/spring-petclinic-pawcare.git
cd spring-petclinic-pawcare
```

If you are using Maven, you can start the application on the command line as follows:

```bash
./mvnw spring-boot:run
```

With Gradle, the command is as follows:

```bash
./gradlew bootRun
```

The SCSS-based theme is compiled to CSS by a separate Maven profile — see [Compiling the CSS](#compiling-the-css) below if you're changing styles.

You can then access PawCare Clinic at <http://localhost:8080/>.

You can, of course, run the app in your favorite IDE. See below for more details.

## Building a Container

There is no `Dockerfile` in this project. You can build a container image (if you have a docker daemon) using the Spring Boot build plugin:

```bash
./mvnw spring-boot:build-image
```

## Running the Container Image

```bash
docker images | grep pawcare-clinic
docker run -p 8080:8080 docker.io/library/pawcare-clinic:latest
```

## Database configuration

In its default configuration, PawCare Clinic uses an in-memory database (H2) which
gets populated at startup with data. The H2 console is exposed at `http://localhost:8080/h2-console`,
and it is possible to inspect the content of the database using the `jdbc:h2:mem:<uuid>` URL. The UUID is printed at startup to the console.

A similar setup is provided for MySQL and PostgreSQL if a persistent database configuration is needed. Note that whenever the database type changes, the app needs to run with a different profile: `spring.profiles.active=mysql` for MySQL or `spring.profiles.active=postgres` for PostgreSQL. See the [Spring Boot documentation](https://docs.spring.io/spring-boot/how-to/properties-and-configuration.html#howto.properties-and-configuration.set-active-spring-profiles) for more detail on how to set the active profile.

You can start MySQL or PostgreSQL locally with whatever installer works for your OS or use docker:

```bash
docker run -e MYSQL_USER=pawcareclinic -e MYSQL_PASSWORD=pawcareclinic -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=pawcareclinic -p 3306:3306 mysql:9.7
```

or

```bash
docker run -e POSTGRES_USER=pawcareclinic -e POSTGRES_PASSWORD=pawcareclinic -e POSTGRES_DB=pawcareclinic -p 5432:5432 postgres:18.4
```

Further documentation is provided for [MySQL](src/main/resources/db/mysql/pawcareclinic_db_setup_mysql.txt)
and [PostgreSQL](src/main/resources/db/postgres/pawcareclinic_db_setup_postgres.txt).

Instead of vanilla `docker` you can also use the provided `docker-compose.yml` file to start the database containers. Each one has a service named after the Spring profile:

```bash
docker compose up mysql
```

or

```bash
docker compose up postgres
```

## Test Applications

At development time we recommend you use the test applications set up as `main()` methods in `PawcareClinicIntegrationTests` (using the default H2 database and also adding Spring Boot Devtools), `MySqlTestApplication` and `PostgresIntegrationTests`. These are set up so that you can run the apps in your IDE to get fast feedback and also run the same classes as integration tests against the respective database. The MySql integration tests use Testcontainers to start the database in a Docker container, and the Postgres tests use Docker Compose to do the same thing.

## Compiling the CSS

There is a `pawcareclinic.css` in `src/main/resources/static/resources/css`. It was generated from the `pawcareclinic.scss` source, combined with the [Bootstrap](https://getbootstrap.com/) library. If you make changes to the `scss`, you will need to re-compile the CSS resources using the Maven profile "css", i.e. `./mvnw generate-resources -P css`. There is no build profile for Gradle to compile the CSS.

## Working with PawCare Clinic in your IDE

### Prerequisites

The following items should be installed in your system:

- Java 17 or newer (full JDK, not a JRE)
- [Git command line tool](https://help.github.com/articles/set-up-git)
- Your preferred IDE
  - Eclipse with the m2e plugin. Note: when m2e is available, there is a m2 icon in `Help -> About` dialog. If m2e is
  not there, follow the installation process [here](https://www.eclipse.org/m2e/)
  - [Spring Tools Suite](https://spring.io/tools) (STS)
  - [IntelliJ IDEA](https://www.jetbrains.com/idea/)
  - [VS Code](https://code.visualstudio.com)

### Steps

1. On the command line run:

    ```bash
    git clone https://github.com/Sri27-ram/spring-petclinic-pawcare.git
    ```

1. Inside Eclipse or STS:

    Open the project via `File -> Import -> Maven -> Existing Maven project`, then select the root directory of the cloned repo.

    Then either build on the command line `./mvnw generate-resources -P css` or use the Eclipse launcher (right-click on project and `Run As -> Maven install`) to generate the CSS. Run the application's main method by right-clicking on it and choosing `Run As -> Java Application`.

1. Inside IntelliJ IDEA:

    In the main menu, choose `File -> Open` and select the project's [pom.xml](pom.xml). Click on the `Open` button.

    - CSS files are generated from the Maven build. You can build them on the command line `./mvnw generate-resources -P css` or right-click on the project then `Maven -> Generates sources and Update Folders`.

    - Run the application by right-clicking on the `PawcareClinicApplication` main class and choosing `Run 'PawcareClinicApplication'`.

1. Navigate to PawCare Clinic

    Visit [http://localhost:8080](http://localhost:8080) in your browser.

## Looking for something in particular?

|Spring Boot Configuration | Class or Java property files  |
|--------------------------|---|
|The Main Class | [PawcareClinicApplication](src/main/java/com/pawcareclinic/PawcareClinicApplication.java) |
|Properties Files | [application.properties](src/main/resources) |
|Caching | [CacheConfiguration](src/main/java/com/pawcareclinic/system/CacheConfiguration.java) |

## License

Released under version 2.0 of the [Apache License](https://www.apache.org/licenses/LICENSE-2.0).
