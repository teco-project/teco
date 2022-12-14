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

extension Tat {
    /// DescribeInvocations请求参数结构体
    public struct DescribeInvocationsRequest: TCRequestModel {
        /// 执行活动ID列表，每次请求的上限为100。参数不支持同时指定 `InvocationIds` 和 `Filters`。
        public let invocationIds: [String]?

        /// 过滤条件。<br> <li> invocation-id - String - 是否必填：否 -（过滤条件）按照执行活动ID过滤。<br> 
        /// <li> command-id - String - 是否必填：否 -（过滤条件）按照命令ID过滤。 
        /// <li> command-created-by - String - 是否必填：否 -（过滤条件）按照执行的命令类型过滤，取值为 TAT 或 USER，TAT 代表公共命令，USER 代表由用户创建的命令。
        /// <li> instance-kind - String - 是否必填：否 -（过滤条件）按照运行实例类型过滤，取值为 CVM 或 LIGHTHOUSE，CVM 代表实例为云服务器， LIGHTHOUSE 代表实例为轻量应用服务器。
        /// <br>每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `InvocationIds` 和 `Filters` 。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        public init(invocationIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.invocationIds = invocationIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case invocationIds = "InvocationIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeInvocations返回参数结构体
    public struct DescribeInvocationsResponse: TCResponseModel {
        /// 符合条件的执行活动总数。
        public let totalCount: UInt64

        /// 执行活动列表。
        public let invocationSet: [Invocation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case invocationSet = "InvocationSet"
            case requestId = "RequestId"
        }
    }

    /// 查询执行活动
    ///
    /// 此接口用于查询执行活动详情。
    @inlinable
    public func describeInvocations(_ input: DescribeInvocationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInvocationsResponse > {
        self.client.execute(action: "DescribeInvocations", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询执行活动
    ///
    /// 此接口用于查询执行活动详情。
    @inlinable
    public func describeInvocations(_ input: DescribeInvocationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationsResponse {
        try await self.client.execute(action: "DescribeInvocations", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询执行活动
    ///
    /// 此接口用于查询执行活动详情。
    @inlinable
    public func describeInvocations(invocationIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInvocationsResponse > {
        self.describeInvocations(DescribeInvocationsRequest(invocationIds: invocationIds, filters: filters, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }

    /// 查询执行活动
    ///
    /// 此接口用于查询执行活动详情。
    @inlinable
    public func describeInvocations(invocationIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationsResponse {
        try await self.describeInvocations(DescribeInvocationsRequest(invocationIds: invocationIds, filters: filters, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }
}
