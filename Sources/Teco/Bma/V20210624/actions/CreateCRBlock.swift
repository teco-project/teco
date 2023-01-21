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

extension Bma {
    /// CreateCRBlock请求参数结构体
    public struct CreateCRBlockRequest: TCRequestModel {
        /// 作品ID
        public let workId: Int64

        /// 侵权链接
        public let tortUrl: String

        /// 侵权标题
        public let tortTitle: String?

        /// 侵权平台
        public let tortPlat: String?

        /// 拦截结果回调地址
        public let blockUrl: String?

        /// 授权书下载地址
        public let fileUrl: String?

        /// 授权书生效日期
        public let validStartDate: String?

        /// 授权书截止日期
        public let validEndDate: String?

        /// 侵权截图
        public let tortPic: String?

        /// 委托书下载地址
        public let commFileUrl: String?

        /// 委托书生效日期
        public let commValidStartDate: String?

        /// 委托书截止日期
        public let commValidEndDate: String?

        /// 是否著作权人：0-否 1-是
        public let isProducer: String?

        /// 存证证书下载地址
        public let evidenceFileUrl: String?

        /// 存证证书生效日期
        public let evidenceValidStartDate: String?

        /// 存证证书截止日期
        public let evidenceValidEndDate: String?

        public init(workId: Int64, tortUrl: String, tortTitle: String? = nil, tortPlat: String? = nil, blockUrl: String? = nil, fileUrl: String? = nil, validStartDate: String? = nil, validEndDate: String? = nil, tortPic: String? = nil, commFileUrl: String? = nil, commValidStartDate: String? = nil, commValidEndDate: String? = nil, isProducer: String? = nil, evidenceFileUrl: String? = nil, evidenceValidStartDate: String? = nil, evidenceValidEndDate: String? = nil) {
            self.workId = workId
            self.tortUrl = tortUrl
            self.tortTitle = tortTitle
            self.tortPlat = tortPlat
            self.blockUrl = blockUrl
            self.fileUrl = fileUrl
            self.validStartDate = validStartDate
            self.validEndDate = validEndDate
            self.tortPic = tortPic
            self.commFileUrl = commFileUrl
            self.commValidStartDate = commValidStartDate
            self.commValidEndDate = commValidEndDate
            self.isProducer = isProducer
            self.evidenceFileUrl = evidenceFileUrl
            self.evidenceValidStartDate = evidenceValidStartDate
            self.evidenceValidEndDate = evidenceValidEndDate
        }

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
            case tortUrl = "TortUrl"
            case tortTitle = "TortTitle"
            case tortPlat = "TortPlat"
            case blockUrl = "BlockUrl"
            case fileUrl = "FileUrl"
            case validStartDate = "ValidStartDate"
            case validEndDate = "ValidEndDate"
            case tortPic = "TortPic"
            case commFileUrl = "CommFileUrl"
            case commValidStartDate = "CommValidStartDate"
            case commValidEndDate = "CommValidEndDate"
            case isProducer = "IsProducer"
            case evidenceFileUrl = "EvidenceFileUrl"
            case evidenceValidStartDate = "EvidenceValidStartDate"
            case evidenceValidEndDate = "EvidenceValidEndDate"
        }
    }

    /// CreateCRBlock返回参数结构体
    public struct CreateCRBlockResponse: TCResponseModel {
        /// 侵权ID
        public let tortId: Int64

        /// 该字段已废弃
        public let tortNum: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tortId = "TortId"
            case tortNum = "TortNum"
            case requestId = "RequestId"
        }
    }

    /// 新建协查处置
    @inlinable
    public func createCRBlock(_ input: CreateCRBlockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRBlockResponse> {
        self.client.execute(action: "CreateCRBlock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建协查处置
    @inlinable
    public func createCRBlock(_ input: CreateCRBlockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRBlockResponse {
        try await self.client.execute(action: "CreateCRBlock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建协查处置
    @inlinable
    public func createCRBlock(workId: Int64, tortUrl: String, tortTitle: String? = nil, tortPlat: String? = nil, blockUrl: String? = nil, fileUrl: String? = nil, validStartDate: String? = nil, validEndDate: String? = nil, tortPic: String? = nil, commFileUrl: String? = nil, commValidStartDate: String? = nil, commValidEndDate: String? = nil, isProducer: String? = nil, evidenceFileUrl: String? = nil, evidenceValidStartDate: String? = nil, evidenceValidEndDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRBlockResponse> {
        self.createCRBlock(CreateCRBlockRequest(workId: workId, tortUrl: tortUrl, tortTitle: tortTitle, tortPlat: tortPlat, blockUrl: blockUrl, fileUrl: fileUrl, validStartDate: validStartDate, validEndDate: validEndDate, tortPic: tortPic, commFileUrl: commFileUrl, commValidStartDate: commValidStartDate, commValidEndDate: commValidEndDate, isProducer: isProducer, evidenceFileUrl: evidenceFileUrl, evidenceValidStartDate: evidenceValidStartDate, evidenceValidEndDate: evidenceValidEndDate), region: region, logger: logger, on: eventLoop)
    }

    /// 新建协查处置
    @inlinable
    public func createCRBlock(workId: Int64, tortUrl: String, tortTitle: String? = nil, tortPlat: String? = nil, blockUrl: String? = nil, fileUrl: String? = nil, validStartDate: String? = nil, validEndDate: String? = nil, tortPic: String? = nil, commFileUrl: String? = nil, commValidStartDate: String? = nil, commValidEndDate: String? = nil, isProducer: String? = nil, evidenceFileUrl: String? = nil, evidenceValidStartDate: String? = nil, evidenceValidEndDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRBlockResponse {
        try await self.createCRBlock(CreateCRBlockRequest(workId: workId, tortUrl: tortUrl, tortTitle: tortTitle, tortPlat: tortPlat, blockUrl: blockUrl, fileUrl: fileUrl, validStartDate: validStartDate, validEndDate: validEndDate, tortPic: tortPic, commFileUrl: commFileUrl, commValidStartDate: commValidStartDate, commValidEndDate: commValidEndDate, isProducer: isProducer, evidenceFileUrl: evidenceFileUrl, evidenceValidStartDate: evidenceValidStartDate, evidenceValidEndDate: evidenceValidEndDate), region: region, logger: logger, on: eventLoop)
    }
}
