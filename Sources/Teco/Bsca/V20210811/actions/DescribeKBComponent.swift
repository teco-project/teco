//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Bsca {
    /// DescribeKBComponent请求参数结构体
    public struct DescribeKBComponentRequest: TCRequestModel {
        /// 组件的PURL
        public let purl: PURL

        public init(purl: PURL) {
            self.purl = purl
        }

        enum CodingKeys: String, CodingKey {
            case purl = "PURL"
        }
    }

    /// DescribeKBComponent返回参数结构体
    public struct DescribeKBComponentResponse: TCResponseModel {
        /// 匹配的组件信息
        public let component: Component

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case component = "Component"
            case requestId = "RequestId"
        }
    }

    /// 查询知识库组件信息
    ///
    /// 本接口(DescribeKBComponent)用于在知识库中查询开源组件信息。本接口根据用户输入的PURL在知识库中寻找对应的开源组件，其中Name为必填字段。
    @inlinable
    public func describeKBComponent(_ input: DescribeKBComponentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKBComponentResponse> {
        self.client.execute(action: "DescribeKBComponent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询知识库组件信息
    ///
    /// 本接口(DescribeKBComponent)用于在知识库中查询开源组件信息。本接口根据用户输入的PURL在知识库中寻找对应的开源组件，其中Name为必填字段。
    @inlinable
    public func describeKBComponent(_ input: DescribeKBComponentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKBComponentResponse {
        try await self.client.execute(action: "DescribeKBComponent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询知识库组件信息
    ///
    /// 本接口(DescribeKBComponent)用于在知识库中查询开源组件信息。本接口根据用户输入的PURL在知识库中寻找对应的开源组件，其中Name为必填字段。
    @inlinable
    public func describeKBComponent(purl: PURL, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKBComponentResponse> {
        self.describeKBComponent(DescribeKBComponentRequest(purl: purl), region: region, logger: logger, on: eventLoop)
    }

    /// 查询知识库组件信息
    ///
    /// 本接口(DescribeKBComponent)用于在知识库中查询开源组件信息。本接口根据用户输入的PURL在知识库中寻找对应的开源组件，其中Name为必填字段。
    @inlinable
    public func describeKBComponent(purl: PURL, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKBComponentResponse {
        try await self.describeKBComponent(DescribeKBComponentRequest(purl: purl), region: region, logger: logger, on: eventLoop)
    }
}
