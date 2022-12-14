//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Mps {
    /// DescribeStreamLinkFlowRealtimeStatus请求参数结构体
    public struct DescribeStreamLinkFlowRealtimeStatusRequest: TCRequestModel {
        /// 流ID。
        public let flowId: String

        /// 输入id数组，如果输入输出数组都为空，则代表全量查询。
        public let inputIds: [String]?

        /// 输出id数组，如果输入输出数组都为空，则代表全量查询。
        public let outputIds: [String]?

        public init(flowId: String, inputIds: [String]? = nil, outputIds: [String]? = nil) {
            self.flowId = flowId
            self.inputIds = inputIds
            self.outputIds = outputIds
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case inputIds = "InputIds"
            case outputIds = "OutputIds"
        }
    }

    /// DescribeStreamLinkFlowRealtimeStatus返回参数结构体
    public struct DescribeStreamLinkFlowRealtimeStatusResponse: TCResponseModel {
        /// 查询时间，单位s。
        public let timestamp: Int64

        /// 实时数据信息列表。
        public let datas: [FlowRealtimeStatusItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case timestamp = "Timestamp"
            case datas = "Datas"
            case requestId = "RequestId"
        }
    }

    /// 查询流实时状态接口
    ///
    /// 实时查询流的当前状态
    @inlinable
    public func describeStreamLinkFlowRealtimeStatus(_ input: DescribeStreamLinkFlowRealtimeStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeStreamLinkFlowRealtimeStatusResponse > {
        self.client.execute(action: "DescribeStreamLinkFlowRealtimeStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流实时状态接口
    ///
    /// 实时查询流的当前状态
    @inlinable
    public func describeStreamLinkFlowRealtimeStatus(_ input: DescribeStreamLinkFlowRealtimeStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowRealtimeStatusResponse {
        try await self.client.execute(action: "DescribeStreamLinkFlowRealtimeStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询流实时状态接口
    ///
    /// 实时查询流的当前状态
    @inlinable
    public func describeStreamLinkFlowRealtimeStatus(flowId: String, inputIds: [String]? = nil, outputIds: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeStreamLinkFlowRealtimeStatusResponse > {
        self.describeStreamLinkFlowRealtimeStatus(DescribeStreamLinkFlowRealtimeStatusRequest(flowId: flowId, inputIds: inputIds, outputIds: outputIds), logger: logger, on: eventLoop)
    }

    /// 查询流实时状态接口
    ///
    /// 实时查询流的当前状态
    @inlinable
    public func describeStreamLinkFlowRealtimeStatus(flowId: String, inputIds: [String]? = nil, outputIds: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowRealtimeStatusResponse {
        try await self.describeStreamLinkFlowRealtimeStatus(DescribeStreamLinkFlowRealtimeStatusRequest(flowId: flowId, inputIds: inputIds, outputIds: outputIds), logger: logger, on: eventLoop)
    }
}
