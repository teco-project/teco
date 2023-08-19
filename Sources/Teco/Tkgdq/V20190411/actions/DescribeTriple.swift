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

extension Tkgdq {
    /// DescribeTriple请求参数结构体
    public struct DescribeTripleRequest: TCRequest {
        /// 三元组查询条件
        public let tripleCondition: String

        public init(tripleCondition: String) {
            self.tripleCondition = tripleCondition
        }

        enum CodingKeys: String, CodingKey {
            case tripleCondition = "TripleCondition"
        }
    }

    /// DescribeTriple返回参数结构体
    public struct DescribeTripleResponse: TCResponse {
        /// 返回三元组信息
        public let content: [TripleContent]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case requestId = "RequestId"
        }
    }

    /// 三元组查询
    ///
    /// 三元组查询，主要分为两类，SP查询和PO查询。SP查询表示已知主语和谓语查询宾语，PO查询表示已知宾语和谓语查询主语。每一个SP或PO查询都是一个可独立执行的查询，TQL支持SP查询的嵌套查询，即主语可以是一个嵌套的子查询。其他复杂的三元组查询方法，请参考官网API文档示例。
    @inlinable
    public func describeTriple(_ input: DescribeTripleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTripleResponse> {
        self.client.execute(action: "DescribeTriple", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 三元组查询
    ///
    /// 三元组查询，主要分为两类，SP查询和PO查询。SP查询表示已知主语和谓语查询宾语，PO查询表示已知宾语和谓语查询主语。每一个SP或PO查询都是一个可独立执行的查询，TQL支持SP查询的嵌套查询，即主语可以是一个嵌套的子查询。其他复杂的三元组查询方法，请参考官网API文档示例。
    @inlinable
    public func describeTriple(_ input: DescribeTripleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTripleResponse {
        try await self.client.execute(action: "DescribeTriple", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 三元组查询
    ///
    /// 三元组查询，主要分为两类，SP查询和PO查询。SP查询表示已知主语和谓语查询宾语，PO查询表示已知宾语和谓语查询主语。每一个SP或PO查询都是一个可独立执行的查询，TQL支持SP查询的嵌套查询，即主语可以是一个嵌套的子查询。其他复杂的三元组查询方法，请参考官网API文档示例。
    @inlinable
    public func describeTriple(tripleCondition: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTripleResponse> {
        self.describeTriple(.init(tripleCondition: tripleCondition), region: region, logger: logger, on: eventLoop)
    }

    /// 三元组查询
    ///
    /// 三元组查询，主要分为两类，SP查询和PO查询。SP查询表示已知主语和谓语查询宾语，PO查询表示已知宾语和谓语查询主语。每一个SP或PO查询都是一个可独立执行的查询，TQL支持SP查询的嵌套查询，即主语可以是一个嵌套的子查询。其他复杂的三元组查询方法，请参考官网API文档示例。
    @inlinable
    public func describeTriple(tripleCondition: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTripleResponse {
        try await self.describeTriple(.init(tripleCondition: tripleCondition), region: region, logger: logger, on: eventLoop)
    }
}
