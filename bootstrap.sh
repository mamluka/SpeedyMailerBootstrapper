if [ ! -d "/c/SpeedyMailer/Source" ]; then
	mkdir -p /c/SpeedyMailer/Source
	cd /c/SpeedyMailer/Source
	
	git clone https://github.com/mamluka/SpeedyMailer.git
fi

cd /c/SpeedyMailer/Source/SpeedyMailer

git pull --rebase

gem install rake
gem install albacore
gem install nokogiri
gem install sys-proctable --platform mswin32
gem install thor

cp -ra Target/* /c/Program Files (x86)/MSBuild/Microsoft/VisualStudio/v11.0/WebApplications/
