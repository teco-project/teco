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

extension Essbasic {
    /// DescribeFileIdsByCustomIds请求参数结构体
    public struct DescribeFileIdsByCustomIdsRequest: TCRequestModel {
        /// 调用方信息, OrganizationId必填
        public let caller: Caller

        /// 用户自定义ID
        public let customIds: [String]?

        public init(caller: Caller, customIds: [String]? = nil) {
            self.caller = caller
            self.customIds = customIds
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case customIds = "CustomIds"
        }
    }

    /// DescribeFileIdsByCustomIds返回参数结构体
    public struct DescribeFileIdsByCustomIdsResponse: TCResponseModel {
        /// <自定义Id,文件id>数组
        public let customIdList: [CustomFileIdMap]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case customIdList = "CustomIdList"
            case requestId = "RequestId"
        }
    }

    /// 根据用户自定义id查询文件id
    @inlinable
    public func describeFileIdsByCustomIds(_ input: DescribeFileIdsByCustomIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileIdsByCustomIdsResponse> {
        self.client.execute(action: "DescribeFileIdsByCustomIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据用户自定义id查询文件id
    @inlinable
    public func describeFileIdsByCustomIds(_ input: DescribeFileIdsByCustomIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileIdsByCustomIdsResponse {
        try await self.client.execute(action: "DescribeFileIdsByCustomIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据用户自定义id查询文件id
    @inlinable
    public func describeFileIdsByCustomIds(caller: Caller, customIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileIdsByCustomIdsResponse> {
        self.describeFileIdsByCustomIds(.init(caller: caller, customIds: customIds), region: region, logger: logger, on: eventLoop)
    }

    /// 根据用户自定义id查询文件id
    @inlinable
    public func describeFileIdsByCustomIds(caller: Caller, customIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileIdsByCustomIdsResponse {
        try await self.describeFileIdsByCustomIds(.init(caller: caller, customIds: customIds), region: region, logger: logger, on: eventLoop)
    }
}
