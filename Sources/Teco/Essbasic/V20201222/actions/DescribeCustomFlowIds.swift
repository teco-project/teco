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

import TecoCore

extension Essbasic {
    /// DescribeCustomFlowIds请求参数结构体
    public struct DescribeCustomFlowIdsRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 自定义 id 列表，最多同时查询 10 个自定义 id
        public let customIds: [String]

        public init(caller: Caller, customIds: [String]) {
            self.caller = caller
            self.customIds = customIds
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case customIds = "CustomIds"
        }
    }

    /// DescribeCustomFlowIds返回参数结构体
    public struct DescribeCustomFlowIdsResponse: TCResponseModel {
        /// 自定义流程 id 映射列表
        public let customIdList: [CustomFlowIdMap]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case customIdList = "CustomIdList"
            case requestId = "RequestId"
        }
    }

    /// 根据用户自定义id查询流程id
    ///
    /// 此接口（DescribeCustomFlowIds）用于通过自定义流程id来查询对应的电子签流程id
    @inlinable
    public func describeCustomFlowIds(_ input: DescribeCustomFlowIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomFlowIdsResponse> {
        self.client.execute(action: "DescribeCustomFlowIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据用户自定义id查询流程id
    ///
    /// 此接口（DescribeCustomFlowIds）用于通过自定义流程id来查询对应的电子签流程id
    @inlinable
    public func describeCustomFlowIds(_ input: DescribeCustomFlowIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomFlowIdsResponse {
        try await self.client.execute(action: "DescribeCustomFlowIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据用户自定义id查询流程id
    ///
    /// 此接口（DescribeCustomFlowIds）用于通过自定义流程id来查询对应的电子签流程id
    @inlinable
    public func describeCustomFlowIds(caller: Caller, customIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomFlowIdsResponse> {
        self.describeCustomFlowIds(.init(caller: caller, customIds: customIds), region: region, logger: logger, on: eventLoop)
    }

    /// 根据用户自定义id查询流程id
    ///
    /// 此接口（DescribeCustomFlowIds）用于通过自定义流程id来查询对应的电子签流程id
    @inlinable
    public func describeCustomFlowIds(caller: Caller, customIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomFlowIdsResponse {
        try await self.describeCustomFlowIds(.init(caller: caller, customIds: customIds), region: region, logger: logger, on: eventLoop)
    }
}
