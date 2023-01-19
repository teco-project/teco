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

extension Tcb {
    /// DescribeWxCloudBaseRunEnvs请求参数结构体
    public struct DescribeWxCloudBaseRunEnvsRequest: TCRequestModel {
        /// wx应用Id
        public let wxAppId: String?

        /// 是否查询全地域
        public let allRegions: Bool?

        public init(wxAppId: String? = nil, allRegions: Bool? = nil) {
            self.wxAppId = wxAppId
            self.allRegions = allRegions
        }

        enum CodingKeys: String, CodingKey {
            case wxAppId = "WxAppId"
            case allRegions = "AllRegions"
        }
    }

    /// DescribeWxCloudBaseRunEnvs返回参数结构体
    public struct DescribeWxCloudBaseRunEnvsResponse: TCResponseModel {
        /// env列表
        public let envList: [EnvInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case envList = "EnvList"
            case requestId = "RequestId"
        }
    }

    /// 查询微信云托管环境信息
    @inlinable
    public func describeWxCloudBaseRunEnvs(_ input: DescribeWxCloudBaseRunEnvsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWxCloudBaseRunEnvsResponse> {
        self.client.execute(action: "DescribeWxCloudBaseRunEnvs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询微信云托管环境信息
    @inlinable
    public func describeWxCloudBaseRunEnvs(_ input: DescribeWxCloudBaseRunEnvsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWxCloudBaseRunEnvsResponse {
        try await self.client.execute(action: "DescribeWxCloudBaseRunEnvs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询微信云托管环境信息
    @inlinable
    public func describeWxCloudBaseRunEnvs(wxAppId: String? = nil, allRegions: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWxCloudBaseRunEnvsResponse> {
        self.describeWxCloudBaseRunEnvs(DescribeWxCloudBaseRunEnvsRequest(wxAppId: wxAppId, allRegions: allRegions), region: region, logger: logger, on: eventLoop)
    }

    /// 查询微信云托管环境信息
    @inlinable
    public func describeWxCloudBaseRunEnvs(wxAppId: String? = nil, allRegions: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWxCloudBaseRunEnvsResponse {
        try await self.describeWxCloudBaseRunEnvs(DescribeWxCloudBaseRunEnvsRequest(wxAppId: wxAppId, allRegions: allRegions), region: region, logger: logger, on: eventLoop)
    }
}
