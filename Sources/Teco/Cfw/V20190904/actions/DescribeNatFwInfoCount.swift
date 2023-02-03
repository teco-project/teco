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

extension Cfw {
    /// DescribeNatFwInfoCount请求参数结构体
    public struct DescribeNatFwInfoCountRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeNatFwInfoCount返回参数结构体
    public struct DescribeNatFwInfoCountResponse: TCResponseModel {
        /// 返回参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnMsg: String?

        /// 当前租户的nat实例个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let natFwInsCount: Int64?

        /// 当前租户接入子网个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetCount: Int64?

        /// 打开开关个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let openSwitchCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case returnMsg = "ReturnMsg"
            case natFwInsCount = "NatFwInsCount"
            case subnetCount = "SubnetCount"
            case openSwitchCount = "OpenSwitchCount"
            case requestId = "RequestId"
        }
    }

    /// 获取当前用户接入nat防火墙的所有子网数及natfw实例个数
    @inlinable
    public func describeNatFwInfoCount(_ input: DescribeNatFwInfoCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatFwInfoCountResponse> {
        self.client.execute(action: "DescribeNatFwInfoCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取当前用户接入nat防火墙的所有子网数及natfw实例个数
    @inlinable
    public func describeNatFwInfoCount(_ input: DescribeNatFwInfoCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatFwInfoCountResponse {
        try await self.client.execute(action: "DescribeNatFwInfoCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取当前用户接入nat防火墙的所有子网数及natfw实例个数
    @inlinable
    public func describeNatFwInfoCount(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatFwInfoCountResponse> {
        let input = DescribeNatFwInfoCountRequest()
        return self.client.execute(action: "DescribeNatFwInfoCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取当前用户接入nat防火墙的所有子网数及natfw实例个数
    @inlinable
    public func describeNatFwInfoCount(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatFwInfoCountResponse {
        let input = DescribeNatFwInfoCountRequest()
        return try await self.client.execute(action: "DescribeNatFwInfoCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
