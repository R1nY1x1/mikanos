#include  <Uefi.h>
#include  <Library/UefiLib.h>

EFI_STATUS EFIAPI UefiMain(
    EFI_HANDLE image_handle,
    EFI_SYSTEM_TABLE *system_table)
{
  Print(L"Hello, HSV-Lab!\n");
  Print(L"                                                                  \n");
  Print(L"       __  __  ______  _     __         __                  __    \n");
  Print(L"      / / / / / ____/ | |   / /        / /                 / /    \n");
  Print(L"     / /_/ /  | |     | |  / / _____  / /       ______    / /___  \n");
  Print(L"    / __  /    | |    | | / / /____/ / /       / __  /   / __  /  \n");
  Print(L"   / / / /  ____| |   | |/ /        / /_____  / /_/ /_  / /_/ /   \n");
  Print(L"  /_/ /_/  /______/   |___/        /_______/ /_______/ /_____/    \n");
  Print(L"                                                                  \n");
  while (1);
  return EFI_SUCCESS;
}
