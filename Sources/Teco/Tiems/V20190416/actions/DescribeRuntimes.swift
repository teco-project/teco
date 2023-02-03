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

extension Tiems {
    /// DescribeRuntimes请求参数结构体
    public struct DescribeRuntimesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeRuntimes返回参数结构体
    public struct DescribeRuntimesResponse: TCResponseModel {
        /// TIEMS支持的运行环境列表
        public let runtimes: [Runtime]

        /// 用户对runtime对权限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userAccess: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case runtimes = "Runtimes"
            case userAccess = "UserAccess"
            case requestId = "RequestId"
        }
    }

    /// 描述服务运行环境
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeRuntimes(_ input: DescribeRuntimesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuntimesResponse> {
        self.client.execute(action: "DescribeRuntimes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述服务运行环境
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeRuntimes(_ input: DescribeRuntimesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuntimesResponse {
        try await self.client.execute(action: "DescribeRuntimes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述服务运行环境
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeRuntimes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuntimesResponse> {
        let input = DescribeRuntimesRequest()
        return self.client.execute(action: "DescribeRuntimes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述服务运行环境
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeRuntimes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuntimesResponse {
        let input = DescribeRuntimesRequest()
        return try await self.client.execute(action: "DescribeRuntimes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
