using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace GUI_Project.Migrations
{
    /// <inheritdoc />
    public partial class updateModules : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Modules_Students_StudentId",
                table: "Modules");

            migrationBuilder.DropIndex(
                name: "IX_Modules_StudentId",
                table: "Modules");

            migrationBuilder.DropColumn(
                name: "StudentId",
                table: "Modules");

            migrationBuilder.CreateTable(
                name: "ModuleStudent",
                columns: table => new
                {
                    ModulesId = table.Column<int>(type: "INTEGER", nullable: false),
                    StudentsId = table.Column<int>(type: "INTEGER", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ModuleStudent", x => new { x.ModulesId, x.StudentsId });
                    table.ForeignKey(
                        name: "FK_ModuleStudent_Modules_ModulesId",
                        column: x => x.ModulesId,
                        principalTable: "Modules",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ModuleStudent_Students_StudentsId",
                        column: x => x.StudentsId,
                        principalTable: "Students",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ModuleStudent_StudentsId",
                table: "ModuleStudent",
                column: "StudentsId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ModuleStudent");

            migrationBuilder.AddColumn<int>(
                name: "StudentId",
                table: "Modules",
                type: "INTEGER",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Modules_StudentId",
                table: "Modules",
                column: "StudentId");

            migrationBuilder.AddForeignKey(
                name: "FK_Modules_Students_StudentId",
                table: "Modules",
                column: "StudentId",
                principalTable: "Students",
                principalColumn: "Id");
        }
    }
}
