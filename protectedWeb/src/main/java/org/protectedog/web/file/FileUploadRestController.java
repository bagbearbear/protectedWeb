package org.protectedog.web.file;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/Images/*")
public class FileUploadRestController {

	/// Filed
	/* �� �Խ��� �� ���� ���ε� ��� */
	@Value("#{commonProperties['fileSF']}")
	String fileSFRoot;

	@Value("#{commonProperties['fileInformation']}")
	String fileISRoot;

	@Value("#{commonProperties['fileAdopt']}")
	String fileADRoot;

	@Value("#{commonProperties['fileFAQ']}")
	String filePQRoot;

	@Value("#{commonProperties['fileMarket']}")
	String fileMKRoot;

	@Value("#{commonProperties['fileShop']}")
	String fileShopRoot;

	@Value("#{commonProperties['fileUser']}")
	String fileUserRoot;

	@Value("#{commonProperties['fileOthers']}")
	String fileOtherRoot;
	
	@Value("{commonProperties['flieReport']}")
	String fileReportRoot;

	/// Constructor
	public FileUploadRestController() {
		System.out.println(this.getClass());
	}

	@RequestMapping(value = "json/imageupload/{boardCode}", method = RequestMethod.POST)
	public void imageupload(@RequestParam("files") List<MultipartFile> images, @PathVariable String boardCode)
			throws Exception {

		System.out.println("/Images/json/imageupload : POST");

		for (MultipartFile image : images) {
			String fileName = image.getOriginalFilename();

			try {
				// �ش� ��ο� �°� ����
				if (boardCode.equals("SF")) {
					File f = new File(fileSFRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("AD")) {
					File f = new File(fileADRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("MS")) {
					File f = new File(fileADRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("AR")) {
					File f = new File(fileADRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("MR")) {
					File f = new File(fileADRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("IS")) {
					File f = new File(fileISRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("PQ")) {
					File f = new File(filePQRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("MK")) {
					File f = new File(fileMKRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("Shop")) {
					File f = new File(fileShopRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("User")) {
					File f = new File(fileUserRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("Other")) {
					File f = new File(fileOtherRoot, fileName);
					image.transferTo(f);
				} else if (boardCode.equals("Report")) {
					File f = new File(fileReportRoot, fileName);
					image.transferTo(f);
				}
				
			
			} catch (IOException e) {
				// ���� ���� �޽���
				System.out.println(" ���� ���ε� �������� ������ �߻��Ͽ����ϴ�. Ȯ�� �� �ٽ� �õ��� �ּ���.");
				e.printStackTrace();
			}
		}
	}

}
