page 50121 "Item Page AS"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Item Table AS";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Item No."; Rec."Item No.")
                {
                }
                field("Item Name"; Rec."Item Name")
                {
                }
                field("Item Type"; Rec."Item Type")
                {
                }
                field("Service Cost"; Rec."Service Cost")
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