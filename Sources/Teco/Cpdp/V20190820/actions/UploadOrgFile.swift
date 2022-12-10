//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cpdp {
    /// 云支付-上传机构文件接口
    @inlinable
    public func uploadOrgFile(_ input: UploadOrgFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UploadOrgFileResponse > {
        self.client.execute(action: "UploadOrgFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云支付-上传机构文件接口
    @inlinable
    public func uploadOrgFile(_ input: UploadOrgFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadOrgFileResponse {
        try await self.client.execute(action: "UploadOrgFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UploadOrgFile请求参数结构体
    public struct UploadOrgFileRequest: TCRequestModel {
        /// 收单系统分配的开放ID
        public let openId: String
        
        /// 收单系统分配的密钥
        public let openKey: String
        
        /// 存储区域（0私密区，1公共区），请严格按文件要求，上传到不同的区域
        public let storage: String
        
        /// 文件的md5值（为防止平台多次上传重复文件，文件名为文件md5,且不会覆盖，重复上传返回第一次上传成功的文件路径）
        public let fileMd5: String
        
        /// 文件内容（先将图片转换成二进制，再进行base64加密）
        public let fileContent: String
        
        /// 文件扩展名（png,jpg,gif）
        public let fileExtension: String
        
        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?
        
        public init (openId: String, openKey: String, storage: String, fileMd5: String, fileContent: String, fileExtension: String, profile: String?) {
            self.openId = openId
            self.openKey = openKey
            self.storage = storage
            self.fileMd5 = fileMd5
            self.fileContent = fileContent
            self.fileExtension = fileExtension
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case storage = "Storage"
            case fileMd5 = "FileMd5"
            case fileContent = "FileContent"
            case fileExtension = "FileExtension"
            case profile = "Profile"
        }
    }
    
    /// UploadOrgFile返回参数结构体
    public struct UploadOrgFileResponse: TCResponseModel {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?
        
        /// 业务系统返回码
        public let errCode: String
        
        /// 上传机构文件响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UploadFileResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
