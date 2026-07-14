import csv
import sys

def convert_to_z_table(input_file, output_file):
    # Dictionary to hold the data: base_val -> list of 10 values
    table = {}
    
    with open(input_file, 'r', encoding='utf-8-sig') as f:
        reader = csv.reader(f)
        for row in reader:
            if not row:
                continue
            
            # Extract the first two columns (wavelength and visibility)
            wl_str = row[0].strip()
            val_str = row[1].strip() if len(row) > 1 else ""
            
            try:
                # Convert to float to ensure valid number, then format to exactly 3 decimal places
                wl_float = float(wl_str)
                wl_formatted = f"{wl_float:.3f}"
                
                # The base is everything except the last digit (e.g. "0.36" from "0.360")
                base_wl = wl_formatted[:-1]
                # The column is the last digit (e.g. "0" to "9")
                col_idx = int(wl_formatted[-1])
                
                if base_wl not in table:
                    table[base_wl] = [""] * 10
                    
                table[base_wl][col_idx] = val_str
                
            except ValueError:
                # Skip rows that don't have valid numbers (like headers if they exist)
                continue

    # Write the result to a new CSV file
    with open(output_file, 'w', newline='', encoding='utf-8-sig') as f:
        writer = csv.writer(f)
        
        # Write header
        header = ['l[m]'] + [str(i) for i in range(10)]
        writer.writerow(header)
        
        # Sort the base wavelengths to ensure order
        for base_wl in sorted(table.keys(), key=lambda x: float(x)):
            row_to_write = [base_wl] + table[base_wl]
            writer.writerow(row_to_write)
            
    print(f"Successfully converted data. Output saved to {output_file}")

if __name__ == "__main__":
    input_filename = "/home/david-mint-desktop/Documents/דפי נוסחאות/CIE_sle_photopic.csv"
    output_filename = "/home/david-mint-desktop/Documents/דפי נוסחאות/CIE_sle_photopic_table.csv"
    
    convert_to_z_table(input_filename, output_filename)
