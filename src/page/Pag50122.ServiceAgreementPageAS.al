page 50122 "Service Agreement Page AS"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Service Agreement Table AS";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Assignment No."; Rec."Assignment No.")
                {
                }
                field("Item No."; Rec."Item No.")
                {
                }
                field("Item Name"; Rec."Item Name")
                {
                }
                field("Service Cost"; Rec."Service Cost")
                {
                }
                field("Technician Name"; Rec."Technician Name")
                {
                }
                field("Assignment Date"; Rec."Assignment Date")
                {
                }
                field("Total Assignment"; Rec."Total Assignment")
                {
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}