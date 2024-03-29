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

extension Ivld {
    /// DescribeMedia请求参数结构体
    public struct DescribeMediaRequest: TCRequest {
        /// 导入媒资返回的媒资ID，最长32B
        public let mediaId: String

        public init(mediaId: String) {
            self.mediaId = mediaId
        }

        enum CodingKeys: String, CodingKey {
            case mediaId = "MediaId"
        }
    }

    /// DescribeMedia返回参数结构体
    public struct DescribeMediaResponse: TCResponse {
        /// 媒资信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaInfo: MediaInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mediaInfo = "MediaInfo"
            case requestId = "RequestId"
        }
    }

    /// 描述媒资文件
    ///
    /// 描述媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    @inlinable
    public func describeMedia(_ input: DescribeMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMediaResponse> {
        self.client.execute(action: "DescribeMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述媒资文件
    ///
    /// 描述媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    @inlinable
    public func describeMedia(_ input: DescribeMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaResponse {
        try await self.client.execute(action: "DescribeMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述媒资文件
    ///
    /// 描述媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    @inlinable
    public func describeMedia(mediaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMediaResponse> {
        self.describeMedia(.init(mediaId: mediaId), region: region, logger: logger, on: eventLoop)
    }

    /// 描述媒资文件
    ///
    /// 描述媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    @inlinable
    public func describeMedia(mediaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaResponse {
        try await self.describeMedia(.init(mediaId: mediaId), region: region, logger: logger, on: eventLoop)
    }
}
