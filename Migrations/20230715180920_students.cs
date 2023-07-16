using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace GUI_Project.Migrations
{
    /// <inheritdoc />
    public partial class students : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Modules_Student_StudentId",
                table: "Modules");

            migrationBuilder.DropForeignKey(
                name: "FK_Results_Student_StudentId",
                table: "Results");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Student",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "MyProperty",
                table: "Student");

            migrationBuilder.RenameTable(
                name: "Student",
                newName: "Students");

            migrationBuilder.RenameColumn(
                name: "lastName",
                table: "Students",
                newName: "LastName");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Students",
                table: "Students",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Modules_Students_StudentId",
                table: "Modules",
                column: "StudentId",
                principalTable: "Students",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Results_Students_StudentId",
                table: "Results",
                column: "StudentId",
                principalTable: "Students",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Modules_Students_StudentId",
                table: "Modules");

            migrationBuilder.DropForeignKey(
                name: "FK_Results_Students_StudentId",
                table: "Results");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Students",
                table: "Students");

            migrationBuilder.RenameTable(
                name: "Students",
                newName: "Student");

            migrationBuilder.RenameColumn(
                name: "LastName",
                table: "Student",
                newName: "lastName");

            migrationBuilder.AddColumn<int>(
                name: "MyProperty",
                table: "Student",
                type: "INTEGER",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddPrimaryKey(
                name: "PK_Student",
                table: "Student",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Modules_Student_StudentId",
                table: "Modules",
                column: "StudentId",
                principalTable: "Student",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Results_Student_StudentId",
                table: "Results",
                column: "StudentId",
                principalTable: "Student",
                principalColumn: "Id");
        }
    }
}
