//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// UpdateCRWork请求参数结构体
    public struct UpdateCRWorkRequest: TCRequestModel {
        /// 作品ID
        public let workId: Int64

        /// 文件的扩展名，例如txt，docx
        public let contentType: String?

        /// 内容的base64编码
        public let content: String?

        /// 本次存证类型：0-不存证 1-存当前文件 2-存历史全量文件
        public let certType: String?

        public init(workId: Int64, contentType: String? = nil, content: String? = nil, certType: String? = nil) {
            self.workId = workId
            self.contentType = contentType
            self.content = content
            self.certType = certType
        }

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
            case contentType = "ContentType"
            case content = "Content"
            case certType = "CertType"
        }
    }

    /// UpdateCRWork返回参数结构体
    public struct UpdateCRWorkResponse: TCResponseModel {
        /// 作品ID
        public let workId: Int64

        /// 存证ID
        public let evidenceId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
            case evidenceId = "EvidenceId"
            case requestId = "RequestId"
        }
    }

    /// 更新作品
    @inlinable
    public func updateCRWork(_ input: UpdateCRWorkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCRWorkResponse> {
        self.client.execute(action: "UpdateCRWork", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新作品
    @inlinable
    public func updateCRWork(_ input: UpdateCRWorkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCRWorkResponse {
        try await self.client.execute(action: "UpdateCRWork", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新作品
    @inlinable
    public func updateCRWork(workId: Int64, contentType: String? = nil, content: String? = nil, certType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCRWorkResponse> {
        self.updateCRWork(UpdateCRWorkRequest(workId: workId, contentType: contentType, content: content, certType: certType), region: region, logger: logger, on: eventLoop)
    }

    /// 更新作品
    @inlinable
    public func updateCRWork(workId: Int64, contentType: String? = nil, content: String? = nil, certType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCRWorkResponse {
        try await self.updateCRWork(UpdateCRWorkRequest(workId: workId, contentType: contentType, content: content, certType: certType), region: region, logger: logger, on: eventLoop)
    }
}
