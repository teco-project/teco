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
    /// CreateDocument请求参数结构体
    public struct CreateDocumentRequest: TCRequest {
        /// 低代码互动课堂的SdkAppId。
        public let sdkAppId: UInt64

        /// 文档地址。
        public let documentUrl: String

        /// 文档名称。
        public let documentName: String

        /// 文档所有者的Id
        public let owner: String

        /// 转码类型，可以有如下取值：
        /// 0 无需转码（默认）
        /// 1 需要转码的文档，ppt，pptx，pdf，doc，docx
        /// 2 需要转码的视频，mp4，3pg，mpeg，avi，flv，wmv，rm，h264等
        /// 2 需要转码的音频，mp3，wav，wma，aac，flac，opus
        public let transcodeType: UInt64?

        /// 权限，可以有如下取值：
        /// 0 私有文档（默认）
        /// 1 公共文档
        public let permission: UInt64?

        /// 文档后缀名。
        public let documentType: String?

        /// 文档大小，单位 字节
        public let documentSize: UInt64?

        /// 是否对不支持元素开启自动处理的功能。默认关闭。
        /// 自动处理的元素如下：
        /// 1. 墨迹：移除不支持的墨迹（例如WPS墨迹）
        /// 2. 自动翻页：移除PPT上所有自动翻页设置，并设置为单击鼠标翻页
        /// 3. 已损坏音视频：移除PPT上对损坏音视频的引用
        public let autoHandleUnsupportedElement: Bool?

        public init(sdkAppId: UInt64, documentUrl: String, documentName: String, owner: String, transcodeType: UInt64? = nil, permission: UInt64? = nil, documentType: String? = nil, documentSize: UInt64? = nil, autoHandleUnsupportedElement: Bool? = nil) {
            self.sdkAppId = sdkAppId
            self.documentUrl = documentUrl
            self.documentName = documentName
            self.owner = owner
            self.transcodeType = transcodeType
            self.permission = permission
            self.documentType = documentType
            self.documentSize = documentSize
            self.autoHandleUnsupportedElement = autoHandleUnsupportedElement
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case documentUrl = "DocumentUrl"
            case documentName = "DocumentName"
            case owner = "Owner"
            case transcodeType = "TranscodeType"
            case permission = "Permission"
            case documentType = "DocumentType"
            case documentSize = "DocumentSize"
            case autoHandleUnsupportedElement = "AutoHandleUnsupportedElement"
        }
    }

    /// CreateDocument返回参数结构体
    public struct CreateDocumentResponse: TCResponse {
        /// 文档ID。
        public let documentId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case documentId = "DocumentId"
            case requestId = "RequestId"
        }
    }

    /// 创建文档
    ///
    /// 创建房间内可以使用的文档。
    @inlinable
    public func createDocument(_ input: CreateDocumentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDocumentResponse> {
        self.client.execute(action: "CreateDocument", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建文档
    ///
    /// 创建房间内可以使用的文档。
    @inlinable
    public func createDocument(_ input: CreateDocumentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDocumentResponse {
        try await self.client.execute(action: "CreateDocument", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建文档
    ///
    /// 创建房间内可以使用的文档。
    @inlinable
    public func createDocument(sdkAppId: UInt64, documentUrl: String, documentName: String, owner: String, transcodeType: UInt64? = nil, permission: UInt64? = nil, documentType: String? = nil, documentSize: UInt64? = nil, autoHandleUnsupportedElement: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDocumentResponse> {
        self.createDocument(.init(sdkAppId: sdkAppId, documentUrl: documentUrl, documentName: documentName, owner: owner, transcodeType: transcodeType, permission: permission, documentType: documentType, documentSize: documentSize, autoHandleUnsupportedElement: autoHandleUnsupportedElement), region: region, logger: logger, on: eventLoop)
    }

    /// 创建文档
    ///
    /// 创建房间内可以使用的文档。
    @inlinable
    public func createDocument(sdkAppId: UInt64, documentUrl: String, documentName: String, owner: String, transcodeType: UInt64? = nil, permission: UInt64? = nil, documentType: String? = nil, documentSize: UInt64? = nil, autoHandleUnsupportedElement: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDocumentResponse {
        try await self.createDocument(.init(sdkAppId: sdkAppId, documentUrl: documentUrl, documentName: documentName, owner: owner, transcodeType: transcodeType, permission: permission, documentType: documentType, documentSize: documentSize, autoHandleUnsupportedElement: autoHandleUnsupportedElement), region: region, logger: logger, on: eventLoop)
    }
}
