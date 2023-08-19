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

extension Tics {
    /// DescribeFileInfo请求参数结构体
    public struct DescribeFileInfoRequest: TCRequest {
        /// 要查询文件的MD5
        public let key: String

        /// 附加字段，是否返回上下文。当为0时不返回上下文，当为1时返回上下文。
        public let option: UInt64?

        public init(key: String, option: UInt64? = nil) {
            self.key = key
            self.option = option
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case option = "Option"
        }
    }

    /// DescribeFileInfo返回参数结构体
    public struct DescribeFileInfoResponse: TCResponse {
        /// 是否有数据，0代表有数据，1代表没有数据
        public let returnCode: UInt64

        /// 判定结果，如：black、white、grey
        public let result: String

        /// 置信度，取值0-100
        public let confidence: UInt64

        /// 文件类型，文件hash
        /// （md5,sha1,sha256）,文件大小等等文件
        /// 基础信息
        public let fileInfo: [FileInfoType]

        /// 恶意标签，对应的团伙，家族等信息。
        public let tags: [TagType]

        /// 对应的历史上的威胁情报事件
        public let intelligences: [IntelligenceType]

        /// 情报相关的上下文
        public let context: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case returnCode = "ReturnCode"
            case result = "Result"
            case confidence = "Confidence"
            case fileInfo = "FileInfo"
            case tags = "Tags"
            case intelligences = "Intelligences"
            case context = "Context"
            case requestId = "RequestId"
        }
    }

    /// 查询文件信誉
    ///
    /// 提供文件相关的基础信息以及与攻击事件（团伙、家族）、恶意文件等相关联信息。
    @inlinable
    public func describeFileInfo(_ input: DescribeFileInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileInfoResponse> {
        self.client.execute(action: "DescribeFileInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件信誉
    ///
    /// 提供文件相关的基础信息以及与攻击事件（团伙、家族）、恶意文件等相关联信息。
    @inlinable
    public func describeFileInfo(_ input: DescribeFileInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileInfoResponse {
        try await self.client.execute(action: "DescribeFileInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文件信誉
    ///
    /// 提供文件相关的基础信息以及与攻击事件（团伙、家族）、恶意文件等相关联信息。
    @inlinable
    public func describeFileInfo(key: String, option: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileInfoResponse> {
        self.describeFileInfo(.init(key: key, option: option), region: region, logger: logger, on: eventLoop)
    }

    /// 查询文件信誉
    ///
    /// 提供文件相关的基础信息以及与攻击事件（团伙、家族）、恶意文件等相关联信息。
    @inlinable
    public func describeFileInfo(key: String, option: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileInfoResponse {
        try await self.describeFileInfo(.init(key: key, option: option), region: region, logger: logger, on: eventLoop)
    }
}
