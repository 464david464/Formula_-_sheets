import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(5, 3.5))

# Define data for the line
nu_0 = 1.0 # arbitrary threshold frequency
slope = 1.5 # arbitrary slope
nu = np.linspace(0, 2.5, 100)
V_0 = slope * (nu - nu_0)

# Plot the physical part (solid) and non-physical part (dashed)
ax.plot(nu[nu >= nu_0], V_0[nu >= nu_0], 'b-', linewidth=2)
ax.plot(nu[nu <= nu_0], V_0[nu <= nu_0], 'b--', linewidth=2)

# Set the axes to cross at zero
ax.spines['left'].set_position('zero')
ax.spines['bottom'].set_position('zero')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')

# Add arrows to axes
ax.plot((1), (0), ls="", marker=">", ms=6, color="k",
        transform=ax.get_yaxis_transform(), clip_on=False)
ax.plot((0), (1), ls="", marker="^", ms=6, color="k",
        transform=ax.get_xaxis_transform(), clip_on=False)

# Remove default ticks to add custom ones
ax.set_xticks([nu_0])
ax.set_xticklabels([r'$B/h$'], fontsize=14)

ax.set_yticks([-slope * nu_0])
ax.set_yticklabels([r'$-B/e$'], fontsize=14)

# Axis labels with units
ax.annotate(r'$\nu\ \mathrm{[Hz]}$', xy=(1.02, 0), xycoords=('axes fraction', 'data'), fontsize=14, ha='left', va='center')
ax.annotate(r'$V_0\ \mathrm{[V]}$', xy=(0, 1.05), xycoords=('data', 'axes fraction'), fontsize=14, ha='center', va='bottom', rotation=0)

# Add slope annotation
ax.annotate(r'Slope $= \frac{h}{e}$', xy=(1.8, slope*(1.8-nu_0)), xytext=(1.2, 1.5),
             arrowprops=dict(facecolor='black', arrowstyle='->'), fontsize=13)

plt.tight_layout()
plt.savefig('/home/david-mint-desktop/Documents/דפי נוסחאות/melicenGraph.png', dpi=300, bbox_inches='tight', transparent=True)
print("Graph generated and saved as melicenGraph.png")
