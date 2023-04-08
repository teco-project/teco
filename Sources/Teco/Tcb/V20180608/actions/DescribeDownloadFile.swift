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
    /// DescribeDownloadFile请求参数结构体
    public struct DescribeDownloadFileRequest: TCRequestModel {
        /// 代码uri，格式如：extension://abcdefhhxxx.zip，对应 DescribeExtensionUploadInfo 接口的返回值
        public let codeUri: String

        public init(codeUri: String) {
            self.codeUri = codeUri
        }

        enum CodingKeys: String, CodingKey {
            case codeUri = "CodeUri"
        }
    }

    /// DescribeDownloadFile返回参数结构体
    public struct DescribeDownloadFileResponse: TCResponseModel {
        /// 文件路径，该字段已废弃
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let filePath: String?

        /// 加密key，用于计算下载加密文件的header。参考SSE-C https://cloud.tencent.com/document/product/436/7728#sse-c
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customKey: String?

        /// 下载链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case filePath = "FilePath"
            case customKey = "CustomKey"
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取下载文件信息
    @inlinable
    public func describeDownloadFile(_ input: DescribeDownloadFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDownloadFileResponse> {
        self.client.execute(action: "DescribeDownloadFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取下载文件信息
    @inlinable
    public func describeDownloadFile(_ input: DescribeDownloadFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDownloadFileResponse {
        try await self.client.execute(action: "DescribeDownloadFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取下载文件信息
    @inlinable
    public func describeDownloadFile(codeUri: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDownloadFileResponse> {
        self.describeDownloadFile(.init(codeUri: codeUri), region: region, logger: logger, on: eventLoop)
    }

    /// 获取下载文件信息
    @inlinable
    public func describeDownloadFile(codeUri: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDownloadFileResponse {
        try await self.describeDownloadFile(.init(codeUri: codeUri), region: region, logger: logger, on: eventLoop)
    }
}
