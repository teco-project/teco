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

extension Cvm {
    /// 续费CDH实例
    ///
    /// 本接口 (RenewHosts) 用于续费包年包月CDH实例。
    /// * 只支持操作包年包月实例，否则操作会以特定[错误码](#6.-.E9.94.99.E8.AF.AF.E7.A0.81)返回。
    /// * 续费时请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。
    @inlinable
    public func renewHosts(_ input: RenewHostsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RenewHostsResponse > {
        self.client.execute(action: "RenewHosts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 续费CDH实例
    ///
    /// 本接口 (RenewHosts) 用于续费包年包月CDH实例。
    /// * 只支持操作包年包月实例，否则操作会以特定[错误码](#6.-.E9.94.99.E8.AF.AF.E7.A0.81)返回。
    /// * 续费时请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。
    @inlinable
    public func renewHosts(_ input: RenewHostsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewHostsResponse {
        try await self.client.execute(action: "RenewHosts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RenewHosts请求参数结构体
    public struct RenewHostsRequest: TCRequestModel {
        /// 一个或多个待操作的CDH实例ID。每次请求的CDH实例的上限为100。
        public let hostIds: [String]
        
        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let hostChargePrepaid: ChargePrepaid
        
        public init (hostIds: [String], hostChargePrepaid: ChargePrepaid) {
            self.hostIds = hostIds
            self.hostChargePrepaid = hostChargePrepaid
        }
        
        enum CodingKeys: String, CodingKey {
            case hostIds = "HostIds"
            case hostChargePrepaid = "HostChargePrepaid"
        }
    }
    
    /// RenewHosts返回参数结构体
    public struct RenewHostsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
