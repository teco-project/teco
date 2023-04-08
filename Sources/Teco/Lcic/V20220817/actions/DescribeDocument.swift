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

extension Lcic {
    /// DescribeDocument请求参数结构体
    public struct DescribeDocumentRequest: TCRequestModel {
        /// 文档Id（唯一id）
        public let documentId: String

        public init(documentId: String) {
            self.documentId = documentId
        }

        enum CodingKeys: String, CodingKey {
            case documentId = "DocumentId"
        }
    }

    /// DescribeDocument返回参数结构体
    public struct DescribeDocumentResponse: TCResponseModel {
        /// 文档Id
        public let documentId: String

        /// 文档原址url
        public let documentUrl: String

        /// 文档名称
        public let documentName: String

        /// 文档所有者UserId
        public let owner: String

        /// 应用Id
        public let sdkAppId: UInt64

        /// 文档权限
        public let permission: UInt64

        /// 转码结果，无需转码为空，转码成功为结果url，转码失败为错误码
        public let transcodeResult: String

        /// 转码类型
        public let transcodeType: UInt64

        /// 转码进度， 0 - 100 表示（0% - 100%）
        public let transcodeProgress: UInt64

        /// 转码状态，0为无需转码，1为正在转码，2为转码失败，3为转码成功
        public let transcodeState: UInt64

        /// 转码失败后的错误信息
        public let transcodeInfo: String

        /// 文档类型
        public let documentType: String

        /// 文档大小，单位：字节
        public let documentSize: UInt64

        /// 更新的UNIX时间戳
        public let updateTime: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case documentId = "DocumentId"
            case documentUrl = "DocumentUrl"
            case documentName = "DocumentName"
            case owner = "Owner"
            case sdkAppId = "SdkAppId"
            case permission = "Permission"
            case transcodeResult = "TranscodeResult"
            case transcodeType = "TranscodeType"
            case transcodeProgress = "TranscodeProgress"
            case transcodeState = "TranscodeState"
            case transcodeInfo = "TranscodeInfo"
            case documentType = "DocumentType"
            case documentSize = "DocumentSize"
            case updateTime = "UpdateTime"
            case requestId = "RequestId"
        }
    }

    /// 获取文档信息
    @inlinable
    public func describeDocument(_ input: DescribeDocumentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDocumentResponse> {
        self.client.execute(action: "DescribeDocument", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取文档信息
    @inlinable
    public func describeDocument(_ input: DescribeDocumentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDocumentResponse {
        try await self.client.execute(action: "DescribeDocument", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取文档信息
    @inlinable
    public func describeDocument(documentId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDocumentResponse> {
        self.describeDocument(.init(documentId: documentId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取文档信息
    @inlinable
    public func describeDocument(documentId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDocumentResponse {
        try await self.describeDocument(.init(documentId: documentId), region: region, logger: logger, on: eventLoop)
    }
}
