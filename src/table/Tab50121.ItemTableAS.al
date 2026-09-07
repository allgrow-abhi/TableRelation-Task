table 50121 "Item Table AS"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item No.';
        }
        field(2; "Item Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Name';
        }
        field(3; "Item Type"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Type';
            OptionMembers = Inventory,NonInventory;
        }
        field(4; "Service Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Service Cost';
        }
    }

    keys
    {
        key(PK; "Item No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}