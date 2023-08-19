//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Btoe {
    /// CreateAudioDeposit请求参数结构体
    public struct CreateAudioDepositRequest: TCRequest {
        /// 存证名称(长度最大30)
        public let evidenceName: String

        /// 对应数据Base64文件名称
        public let fileName: String

        /// 文件hash
        public let evidenceHash: String

        /// 业务ID 透传 长度最大不超过64
        public let businessId: String?

        /// 数据Base64编码，大小不超过5M
        public let fileContent: String?

        /// 资源访问链接 与fileContent必须二选一
        public let fileUrl: String?

        /// 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        public let hashType: UInt64?

        /// 存证描述
        public let evidenceDescription: String?

        public init(evidenceName: String, fileName: String, evidenceHash: String, businessId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, hashType: UInt64? = nil, evidenceDescription: String? = nil) {
            self.evidenceName = evidenceName
            self.fileName = fileName
            self.evidenceHash = evidenceHash
            self.businessId = businessId
            self.fileContent = fileContent
            self.fileUrl = fileUrl
            self.hashType = hashType
            self.evidenceDescription = evidenceDescription
        }

        enum CodingKeys: String, CodingKey {
            case evidenceName = "EvidenceName"
            case fileName = "FileName"
            case evidenceHash = "EvidenceHash"
            case businessId = "BusinessId"
            case fileContent = "FileContent"
            case fileUrl = "FileUrl"
            case hashType = "HashType"
            case evidenceDescription = "EvidenceDescription"
        }
    }

    /// CreateAudioDeposit返回参数结构体
    public struct CreateAudioDepositResponse: TCResponse {
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

    /// 音频文件存证
    ///
    /// 用户通过本接口向BTOE写入待存证的音频原文件或下载URL，BTOE对音频原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。音频类型支持格式：mp3、wav、wma、midi、flac；原文件上传大小不超过5 MB，下载URL文件大小不超过25 MB。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createAudioDeposit(_ input: CreateAudioDepositRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAudioDepositResponse> {
        fatalError("CreateAudioDeposit is no longer available.")
    }

    /// 音频文件存证
    ///
    /// 用户通过本接口向BTOE写入待存证的音频原文件或下载URL，BTOE对音频原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。音频类型支持格式：mp3、wav、wma、midi、flac；原文件上传大小不超过5 MB，下载URL文件大小不超过25 MB。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createAudioDeposit(_ input: CreateAudioDepositRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAudioDepositResponse {
        fatalError("CreateAudioDeposit is no longer available.")
    }

    /// 音频文件存证
    ///
    /// 用户通过本接口向BTOE写入待存证的音频原文件或下载URL，BTOE对音频原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。音频类型支持格式：mp3、wav、wma、midi、flac；原文件上传大小不超过5 MB，下载URL文件大小不超过25 MB。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createAudioDeposit(evidenceName: String, fileName: String, evidenceHash: String, businessId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, hashType: UInt64? = nil, evidenceDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAudioDepositResponse> {
        fatalError("CreateAudioDeposit is no longer available.")
    }

    /// 音频文件存证
    ///
    /// 用户通过本接口向BTOE写入待存证的音频原文件或下载URL，BTOE对音频原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。音频类型支持格式：mp3、wav、wma、midi、flac；原文件上传大小不超过5 MB，下载URL文件大小不超过25 MB。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createAudioDeposit(evidenceName: String, fileName: String, evidenceHash: String, businessId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, hashType: UInt64? = nil, evidenceDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAudioDepositResponse {
        fatalError("CreateAudioDeposit is no longer available.")
    }
}
