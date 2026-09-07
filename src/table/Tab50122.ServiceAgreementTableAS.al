table 50122 "Service Agreement Table AS"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Assignment No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Assignment No.';
        }
        field(2; "Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item No.';
            TableRelation = "Item Table AS"."Item No.";
            trigger OnValidate()
            var
                ItemRec: Record "Item Table AS";
            begin
                if ItemRec.Get("Item No.") then begin
                    Rec."Item Name" := ItemRec."Item Name";
                    Rec."Service Cost" := ItemRec."Service Cost";
                end
            end;
        }
        field(3; "Item Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Name';
        }
        field(4; "Service Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Service Cost';
        }
        field(5; "Technician Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Technician Name';
        }
        field(6; "Assignment Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Assignment Date';
        }
        field(7; "Total Assignment"; Integer)
        {
            Caption = 'Total Assignment';
            FieldClass = FlowField;
            CalcFormula = count("Item Table AS" Where("Item No." = field("Item No.")));
        }
    }

    keys
    {
        key(PK; "Assignment No.")
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