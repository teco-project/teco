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

extension Btoe {
    /// CreateVideoDeposit请求参数结构体
    public struct CreateVideoDepositRequest: TCRequestModel {
        /// 存证名称(长度最大30)
        public let evidenceName: String
        
        /// 数据Base64编码，大小不超过5M
        public let fileContent: String
        
        /// 带后缀的文件名称，如music.mkv
        public let fileName: String
        
        /// 文件hash
        public let evidenceHash: String
        
        /// 业务ID 透传 长度最大不超过64
        public let businessId: String?
        
        /// 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        public let hashType: UInt64?
        
        /// 存证描述
        public let evidenceDescription: String?
        
        public init (evidenceName: String, fileContent: String, fileName: String, evidenceHash: String, businessId: String? = nil, hashType: UInt64? = nil, evidenceDescription: String? = nil) {
            self.evidenceName = evidenceName
            self.fileContent = fileContent
            self.fileName = fileName
            self.evidenceHash = evidenceHash
            self.businessId = businessId
            self.hashType = hashType
            self.evidenceDescription = evidenceDescription
        }
        
        enum CodingKeys: String, CodingKey {
            case evidenceName = "EvidenceName"
            case fileContent = "FileContent"
            case fileName = "FileName"
            case evidenceHash = "EvidenceHash"
            case businessId = "BusinessId"
            case hashType = "HashType"
            case evidenceDescription = "EvidenceDescription"
        }
    }
    
    /// CreateVideoDeposit返回参数结构体
    public struct CreateVideoDepositResponse: TCResponseModel {
        /// 业务ID 透传 长度最大不超过64
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let businessId: String?
        
        /// 请求成功，返回存证编码,用于查询存证后续业务数据
        public let evidenceId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case businessId = "BusinessId"
            case evidenceId = "EvidenceId"
            case requestId = "RequestId"
        }
    }
    
    /// 视频文件存证
    ///
    /// 用户通过本接口向BTOE写入待存证的视频的原文件或下载URL，BTOE对视频原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。视频文件支持格式：mp4、avi、mkv、mov、flv,wmv,rmvb,3gp；文件大小限制：直接上传原文件不大于5MB，下载URL文件大小不大于200 MB。
    @inlinable
    public func createVideoDeposit(_ input: CreateVideoDepositRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateVideoDepositResponse > {
        self.client.execute(action: "CreateVideoDeposit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 视频文件存证
    ///
    /// 用户通过本接口向BTOE写入待存证的视频的原文件或下载URL，BTOE对视频原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。视频文件支持格式：mp4、avi、mkv、mov、flv,wmv,rmvb,3gp；文件大小限制：直接上传原文件不大于5MB，下载URL文件大小不大于200 MB。
    @inlinable
    public func createVideoDeposit(_ input: CreateVideoDepositRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVideoDepositResponse {
        try await self.client.execute(action: "CreateVideoDeposit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
