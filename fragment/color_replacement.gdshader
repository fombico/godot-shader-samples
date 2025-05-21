shader_type canvas_item;

// replacement_color parameter. uniform means value is the same for all fragments
uniform vec3 replacement_color: source_color;

void fragment() {
	// filter out green channel from the picture,
	// so we can determine which areas have red and blue components
	vec3 color_without_green = COLOR.rgb * vec3(1.0, 0.0, 0.0);
	
	// make a number indicating the amount of red and blue in the fragment
	// by calling the length function
	float amount_of_red_blue = length(color_without_green);
	
	// use the step function to create a mask for
	// the parts that are containing red and blue
	float red_and_blue_mask = step(0.01, amount_of_red_blue);
	
	// make a var for the color we don't want to change
	vec3 retained_color = COLOR.rgb * red_and_blue_mask;
	
	// invert the red_and_blue_mask and multiply it with green channel
	// so we get a nice blending mask for the replacement color
	float green_mask = (1.0 - red_and_blue_mask) * COLOR.g;
	
	// calculate the replacement color in the correct 
	// intensity to blend with the rest of the image
	vec3 mask_replacement_color = replacement_color * green_mask;
	
	// finally composite the original image's retained color
	// and the replacement color on top of each other
	vec3 final_color = mask_replacement_color + retained_color;

	COLOR.rgb = final_color;
}
