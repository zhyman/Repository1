class PhotosController < ApplicationController
	def new
  		@photo = Photo.new
  		@photo.save

	end
	def update
		@photo = Photo.find(params[:id])
 
	    if @photo.update(photo_params)

			array = @photo.caption.split(' ')
			array.each do |word|
				if word.include?("#")
					@hashtag = Hashtag.where(text: word).first_or_create(text: word)
				
					@photo.hashtags << @hashtag
					@photo.save
				end
			end
	      redirect_to @photo
	    else
	      render 'edit'
	    end
	end
	def upvote
  		@photo = Photo.find(params[:id])
  		@photo.increment!(:vote, by = 1)
  		redirect_to(photos_path)
	end

	def edit
		@photo =Photo.find(params[:id])
	end

	def create
		@photo = Photo.create(photo_params)

		if @photo.save
			array = @photo.caption.split(' ')
			array.each do |word|
				if word.include?("#")
					@hashtag = Hashtag.create(text: word)
					@photo.hashtags << @hashtag
					@photo.save
				end
			end
			redirect_to photo_path(@photo)
		else
			render :new
		end

	end

	def destroy
    	@photo = Photo.find(params[:id])
    	@photo.destroy
 
    	redirect_to photos_path
   	end

	def show
		@photo=Photo.find(params[:id])
	end

	def index
		@photos = Photo.all.order(:vote).reverse_order
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def photo_params
	  params.require(:photo).permit(:image, :caption, :hashtag)
	end
end
