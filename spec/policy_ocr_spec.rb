require_relative '../lib/policy_ocr'

describe PolicyOcr do
  it "loads" do
    expect(PolicyOcr).to be_a Module
  end

  it 'loads the sample.txt' do
    expect(fixture('sample').lines.count).to eq(44)
  end

  describe 'scan_all_files' do
    it 'scans files from folder and creates new files on result folder' do
      WRITE_PATH = "#{Dir.pwd}/spec/fixtures/scan_results"
      FileUtils.rm_f Dir.glob(FileUtils.rm_rf(Dir["#{WRITE_PATH}/*"]))

      expect(File).not_to exist("#{WRITE_PATH}/sample-result.txt")
      expect(File).not_to exist("./fixtures/scan_results/sample2-result.txt")

      PolicyOcr::scan_all_files

      expect(File).to exist("#{WRITE_PATH}/sample-result.txt")
      expect(File).to exist("#{WRITE_PATH}/sample2-result.txt")

    end
  end

  describe 'validate_number' do
    context 'when check sum mod does not equal 11' do
      it 'returns false' do
        invalid_nums = [1,0,2,4,1,1,3,8,4]
        expect(PolicyOcr::validate_number(invalid_nums)).to be(false)
      end
    end
    context 'when check sum mod equals 11' do
      it 'returns true' do
        invalid_nums = [2,3,2,4,1,1,3,2,8]
        expect(PolicyOcr::validate_number(invalid_nums)).to be(true)
      end
    end
  end
end
