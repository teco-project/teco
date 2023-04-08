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

extension Tkgdq {
    /// DescribeRelation请求参数结构体
    public struct DescribeRelationRequest: TCRequestModel {
        /// 输入第一个实体
        public let leftEntityName: String

        /// 输入第二个实体
        public let rightEntityName: String

        public init(leftEntityName: String, rightEntityName: String) {
            self.leftEntityName = leftEntityName
            self.rightEntityName = rightEntityName
        }

        enum CodingKeys: String, CodingKey {
            case leftEntityName = "LeftEntityName"
            case rightEntityName = "RightEntityName"
        }
    }

    /// DescribeRelation返回参数结构体
    public struct DescribeRelationResponse: TCResponseModel {
        /// 返回查询实体间的关系
        public let content: [EntityRelationContent]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case requestId = "RequestId"
        }
    }

    /// 实体关系查询
    ///
    /// 输入两个实体，返回两个实体间的关系，例如马化腾与腾讯公司不仅是相关实体，二者还存在隶属关系（马化腾属于腾讯公司）。
    @inlinable
    public func describeRelation(_ input: DescribeRelationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRelationResponse> {
        self.client.execute(action: "DescribeRelation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实体关系查询
    ///
    /// 输入两个实体，返回两个实体间的关系，例如马化腾与腾讯公司不仅是相关实体，二者还存在隶属关系（马化腾属于腾讯公司）。
    @inlinable
    public func describeRelation(_ input: DescribeRelationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRelationResponse {
        try await self.client.execute(action: "DescribeRelation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实体关系查询
    ///
    /// 输入两个实体，返回两个实体间的关系，例如马化腾与腾讯公司不仅是相关实体，二者还存在隶属关系（马化腾属于腾讯公司）。
    @inlinable
    public func describeRelation(leftEntityName: String, rightEntityName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRelationResponse> {
        self.describeRelation(.init(leftEntityName: leftEntityName, rightEntityName: rightEntityName), region: region, logger: logger, on: eventLoop)
    }

    /// 实体关系查询
    ///
    /// 输入两个实体，返回两个实体间的关系，例如马化腾与腾讯公司不仅是相关实体，二者还存在隶属关系（马化腾属于腾讯公司）。
    @inlinable
    public func describeRelation(leftEntityName: String, rightEntityName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRelationResponse {
        try await self.describeRelation(.init(leftEntityName: leftEntityName, rightEntityName: rightEntityName), region: region, logger: logger, on: eventLoop)
    }
}
