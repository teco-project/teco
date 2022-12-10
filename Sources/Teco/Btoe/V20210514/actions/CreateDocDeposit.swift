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
    /// 文档存证
    ///
    /// 用户通过本接口向BTOE写入待存证的文档原文件或下载URL，BTOE对文档原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。文档类型支持格式：doc、docx、xls、xlsx、ppt、pptx、 pdf、html、txt、md、csv；原文件上传大小不超过5 MB，下载URL文件大小不超过10 MB。
    @inlinable
    public func createDocDeposit(_ input: CreateDocDepositRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDocDepositResponse > {
        self.client.execute(action: "CreateDocDeposit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 文档存证
    ///
    /// 用户通过本接口向BTOE写入待存证的文档原文件或下载URL，BTOE对文档原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。文档类型支持格式：doc、docx、xls、xlsx、ppt、pptx、 pdf、html、txt、md、csv；原文件上传大小不超过5 MB，下载URL文件大小不超过10 MB。
    @inlinable
    public func createDocDeposit(_ input: CreateDocDepositRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDocDepositResponse {
        try await self.client.execute(action: "CreateDocDeposit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateDocDeposit请求参数结构体
    public struct CreateDocDepositRequest: TCRequestModel {
        /// 存证名称(长度最大30)
        public let evidenceName: String
        
        /// 数据Base64编码，大小不超过5M
        public let fileContent: String
        
        /// 带后缀的文件名称，如 test.doc
        public let fileName: String
        
        /// 文件hash
        public let evidenceHash: String
        
        /// 业务ID 透传 长度最大不超过64
        public let businessId: String?
        
        /// 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        public let hashType: UInt64?
        
        /// 存证描述
        public let evidenceDescription: String?
        
        public init (evidenceName: String, fileContent: String, fileName: String, evidenceHash: String, businessId: String?, hashType: UInt64?, evidenceDescription: String?) {
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
    
    /// CreateDocDeposit返回参数结构体
    public struct CreateDocDepositResponse: TCResponseModel {
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
}
