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

extension Tcb {
    /// DescribeExtensionUploadInfo请求参数结构体
    public struct DescribeExtensionUploadInfoRequest: TCRequest {
        /// 待上传的文件
        public let extensionFiles: [ExtensionFile]

        public init(extensionFiles: [ExtensionFile]) {
            self.extensionFiles = extensionFiles
        }

        enum CodingKeys: String, CodingKey {
            case extensionFiles = "ExtensionFiles"
        }
    }

    /// DescribeExtensionUploadInfo返回参数结构体
    public struct DescribeExtensionUploadInfoResponse: TCResponse {
        /// 待上传文件的信息数组
        public let filesData: [ExtensionFileInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case filesData = "FilesData"
            case requestId = "RequestId"
        }
    }

    /// 描述扩展上传文件信息
    @inlinable
    public func describeExtensionUploadInfo(_ input: DescribeExtensionUploadInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExtensionUploadInfoResponse> {
        self.client.execute(action: "DescribeExtensionUploadInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述扩展上传文件信息
    @inlinable
    public func describeExtensionUploadInfo(_ input: DescribeExtensionUploadInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExtensionUploadInfoResponse {
        try await self.client.execute(action: "DescribeExtensionUploadInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述扩展上传文件信息
    @inlinable
    public func describeExtensionUploadInfo(extensionFiles: [ExtensionFile], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExtensionUploadInfoResponse> {
        self.describeExtensionUploadInfo(.init(extensionFiles: extensionFiles), region: region, logger: logger, on: eventLoop)
    }

    /// 描述扩展上传文件信息
    @inlinable
    public func describeExtensionUploadInfo(extensionFiles: [ExtensionFile], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExtensionUploadInfoResponse {
        try await self.describeExtensionUploadInfo(.init(extensionFiles: extensionFiles), region: region, logger: logger, on: eventLoop)
    }
}
