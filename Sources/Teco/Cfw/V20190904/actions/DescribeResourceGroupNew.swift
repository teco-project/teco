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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cfw {
    /// DescribeResourceGroupNew请求参数结构体
    public struct DescribeResourceGroupNewRequest: TCRequestModel {
        /// 查询类型 网络结构-vpc，业务识别-resource ，资源标签-tag
        public let queryType: String

        /// 资产组id  全部传0
        public let groupId: String?

        /// all  包含子组 own自己
        public let showType: String?

        public init(queryType: String, groupId: String? = nil, showType: String? = nil) {
            self.queryType = queryType
            self.groupId = groupId
            self.showType = showType
        }

        enum CodingKeys: String, CodingKey {
            case queryType = "QueryType"
            case groupId = "GroupId"
            case showType = "ShowType"
        }
    }

    /// DescribeResourceGroupNew返回参数结构体
    public struct DescribeResourceGroupNewResponse: TCResponseModel {
        /// 返回树形结构
        public let data: String

        /// 未分类实例数量
        public let unResourceNum: Int64

        /// 接口返回消息
        public let returnMsg: String

        /// 返回码；0为请求成功
        public let returnCode: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case unResourceNum = "UnResourceNum"
            case returnMsg = "ReturnMsg"
            case returnCode = "ReturnCode"
            case requestId = "RequestId"
        }
    }

    /// 资产中心资产树信息查询new
    ///
    /// DescribeResourceGroupNew资产中心资产树信息
    @inlinable
    public func describeResourceGroupNew(_ input: DescribeResourceGroupNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceGroupNewResponse> {
        self.client.execute(action: "DescribeResourceGroupNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 资产中心资产树信息查询new
    ///
    /// DescribeResourceGroupNew资产中心资产树信息
    @inlinable
    public func describeResourceGroupNew(_ input: DescribeResourceGroupNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceGroupNewResponse {
        try await self.client.execute(action: "DescribeResourceGroupNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 资产中心资产树信息查询new
    ///
    /// DescribeResourceGroupNew资产中心资产树信息
    @inlinable
    public func describeResourceGroupNew(queryType: String, groupId: String? = nil, showType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceGroupNewResponse> {
        self.describeResourceGroupNew(.init(queryType: queryType, groupId: groupId, showType: showType), region: region, logger: logger, on: eventLoop)
    }

    /// 资产中心资产树信息查询new
    ///
    /// DescribeResourceGroupNew资产中心资产树信息
    @inlinable
    public func describeResourceGroupNew(queryType: String, groupId: String? = nil, showType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceGroupNewResponse {
        try await self.describeResourceGroupNew(.init(queryType: queryType, groupId: groupId, showType: showType), region: region, logger: logger, on: eventLoop)
    }
}
