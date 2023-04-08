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

extension Vpc {
    /// CheckDefaultSubnet请求参数结构体
    public struct CheckDefaultSubnetRequest: TCRequestModel {
        /// 子网所在的可用区ID，不同子网选择不同可用区可以做跨可用区灾备。
        public let zone: String?

        public init(zone: String? = nil) {
            self.zone = zone
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
        }
    }

    /// CheckDefaultSubnet返回参数结构体
    public struct CheckDefaultSubnetResponse: TCResponseModel {
        /// 检查结果。true为可以创建默认子网，false为不可以创建默认子网。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 预判是否可建默认子网
    ///
    /// 本接口（CheckDefaultSubnet）用于预判是否可建默认子网。
    @inlinable
    public func checkDefaultSubnet(_ input: CheckDefaultSubnetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckDefaultSubnetResponse> {
        self.client.execute(action: "CheckDefaultSubnet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 预判是否可建默认子网
    ///
    /// 本接口（CheckDefaultSubnet）用于预判是否可建默认子网。
    @inlinable
    public func checkDefaultSubnet(_ input: CheckDefaultSubnetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckDefaultSubnetResponse {
        try await self.client.execute(action: "CheckDefaultSubnet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 预判是否可建默认子网
    ///
    /// 本接口（CheckDefaultSubnet）用于预判是否可建默认子网。
    @inlinable
    public func checkDefaultSubnet(zone: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckDefaultSubnetResponse> {
        self.checkDefaultSubnet(.init(zone: zone), region: region, logger: logger, on: eventLoop)
    }

    /// 预判是否可建默认子网
    ///
    /// 本接口（CheckDefaultSubnet）用于预判是否可建默认子网。
    @inlinable
    public func checkDefaultSubnet(zone: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckDefaultSubnetResponse {
        try await self.checkDefaultSubnet(.init(zone: zone), region: region, logger: logger, on: eventLoop)
    }
}
