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

extension Essbasic {
    /// DescribeCustomFlowIdsByFlowId请求参数结构体
    public struct DescribeCustomFlowIdsByFlowIdRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 流程 id 列表，最多同时查询 10 个流程 id
        public let flowIds: [String]

        public init(caller: Caller, flowIds: [String]) {
            self.caller = caller
            self.flowIds = flowIds
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case flowIds = "FlowIds"
        }
    }

    /// DescribeCustomFlowIdsByFlowId返回参数结构体
    public struct DescribeCustomFlowIdsByFlowIdResponse: TCResponseModel {
        /// 自定义流程 id 映射列表
        public let customIdList: [CustomFlowIdMap]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case customIdList = "CustomIdList"
            case requestId = "RequestId"
        }
    }

    /// 根据流程id反查自定义流程id
    ///
    /// 此接口（DescribeCustomFlowIdsByFlowId）用于根据流程id反查自定义流程id
    @inlinable
    public func describeCustomFlowIdsByFlowId(_ input: DescribeCustomFlowIdsByFlowIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomFlowIdsByFlowIdResponse> {
        self.client.execute(action: "DescribeCustomFlowIdsByFlowId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据流程id反查自定义流程id
    ///
    /// 此接口（DescribeCustomFlowIdsByFlowId）用于根据流程id反查自定义流程id
    @inlinable
    public func describeCustomFlowIdsByFlowId(_ input: DescribeCustomFlowIdsByFlowIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomFlowIdsByFlowIdResponse {
        try await self.client.execute(action: "DescribeCustomFlowIdsByFlowId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据流程id反查自定义流程id
    ///
    /// 此接口（DescribeCustomFlowIdsByFlowId）用于根据流程id反查自定义流程id
    @inlinable
    public func describeCustomFlowIdsByFlowId(caller: Caller, flowIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomFlowIdsByFlowIdResponse> {
        self.describeCustomFlowIdsByFlowId(DescribeCustomFlowIdsByFlowIdRequest(caller: caller, flowIds: flowIds), region: region, logger: logger, on: eventLoop)
    }

    /// 根据流程id反查自定义流程id
    ///
    /// 此接口（DescribeCustomFlowIdsByFlowId）用于根据流程id反查自定义流程id
    @inlinable
    public func describeCustomFlowIdsByFlowId(caller: Caller, flowIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomFlowIdsByFlowIdResponse {
        try await self.describeCustomFlowIdsByFlowId(DescribeCustomFlowIdsByFlowIdRequest(caller: caller, flowIds: flowIds), region: region, logger: logger, on: eventLoop)
    }
}
