import gradio as gr




def process(instance_img1, instance_img2, instance_img3, instance_img4, instance_img5, instance_img6, cls_name, ID):
    print(cls_name)
    print("asdaddas")




block = gr.Blocks().queue()
with block:
    with gr.Row():
        gr.Markdown("# Train Stable Diffusion 1.5 to generate your face images")

    with gr.Row():
        with gr.Column():

            gr.Markdown("### Upload at least 3 images of your face")
            with gr.Row():

                with gr.Column():
                    instance_img1 = gr.Image(sources='upload', type="numpy")
                with gr.Column():
                    instance_img2 = gr.Image(sources='upload', type="numpy")

            with gr.Row():
                with gr.Column():
                    instance_img3 = gr.Image(sources='upload', type="numpy")
                with gr.Column():
                    instance_img4 = gr.Image(sources='upload', type="numpy")

            with gr.Row():                    
                with gr.Column():
                    instance_img5 = gr.Image(sources='upload', type="numpy")
                with gr.Column():
                    instance_img6 = gr.Image(sources='upload', type="numpy")
            

            cls_name = gr.Dropdown(
                ["man", "woman", "boy", "girl"], label="Class", info="Which term presents you best?", value='woman'
            ),

            ID = gr.Textbox(value="sdstd", label="ID", info="Write an ID for youeself. The ID must not be meaningful. This represents you later in prompts", placeholder="wftds")

            run_button = gr.Button(value="Train the model")

        with gr.Column():
            # prompt = gr.Textbox(label="Prompt")
            # run_button = gr.Button(value="Run")
            pass
 

    inputs = [instance_img1, instance_img2, instance_img3, instance_img4, instance_img5, instance_img6, cls_name[0], ID]
    result_gallery = []

    run_button.click(fn=process, inputs=inputs) #, outputs=[result_gallery])


block.launch(inbrowser=True, server_name="0.0.0.0")

