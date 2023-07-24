# IronManSuitsDB

![GitHub](https://img.shields.io/github/license/McRafee/IronManSuitsDB)
![GitHub last commit](https://img.shields.io/github/last-commit/McRafee/IronManSuitsDB)
![GitHub repo size](https://img.shields.io/github/repo-size/McRafee/IronManSuitsDB)

## Description

IronManSuitsDB is a repository that contains a CSV file with information about the various Iron Man suits, along with an SQL*Plus script to create a table and insert data into an Oracle database. The repository is meant to showcase how to manage data related to Iron Man suits using an Oracle database.

## Database Schema

The table `iron_man_suits` stores information about the Iron Man suits, including their names, characteristics, and movie appearances. It has the following columns:

- `suit_id` (Primary Key) - A unique identifier for each suit.
- `suit_name` - The name of the Iron Man suit.
- `characteristics` - The characteristics of the suit.
- `movie_appearance` - The movie in which the suit appears.

## Requirements

To run the SQL script and import the data, you'll need:

- An Oracle Database installed and running.
- SQL*Plus installed on your machine.

## How to Use

1. Clone this repository to your local machine.
2. Create the table in your Oracle database by executing the `create_table.sql` script using SQL*Plus.
3. Place your CSV file with Iron Man suit data in the same directory as the `insert_data.sql` script.
4. Update the `insert_data.sql` script with your Oracle database credentials.
5. Run the `insert_data.sql` script using SQL*Plus to insert the data from the CSV file into the table.
6. Verify that the data has been successfully inserted into the `iron_man_suits` table.

## Contributing

Contributions to improve this repository are welcome! Feel free to submit issues or pull requests.

## License

This project is licensed under the [MIT License](LICENSE).
