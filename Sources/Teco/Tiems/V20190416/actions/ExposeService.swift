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

extension Tiems {
    /// ExposeService请求参数结构体
    public struct ExposeServiceRequest: TCRequest {
        /// 服务Id
        public let serviceId: String

        /// 暴露方式，支持 EXTERNAL（外网暴露），VPC （VPC内网打通）
        public let exposeType: String

        /// 暴露方式为 VPC 时，填写需要打通的私有网络Id
        public let vpcId: String?

        /// 暴露方式为 VPC 时，填写需要打通的子网Id
        public let subnetId: String?

        public init(serviceId: String, exposeType: String, vpcId: String? = nil, subnetId: String? = nil) {
            self.serviceId = serviceId
            self.exposeType = exposeType
            self.vpcId = vpcId
            self.subnetId = subnetId
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case exposeType = "ExposeType"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
        }
    }

    /// ExposeService返回参数结构体
    public struct ExposeServiceResponse: TCResponse {
        /// 暴露方式
        public let expose: ExposeInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case expose = "Expose"
            case requestId = "RequestId"
        }
    }

    /// 暴露服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func exposeService(_ input: ExposeServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExposeServiceResponse> {
        fatalError("ExposeService is no longer available.")
    }

    /// 暴露服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func exposeService(_ input: ExposeServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExposeServiceResponse {
        fatalError("ExposeService is no longer available.")
    }

    /// 暴露服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func exposeService(serviceId: String, exposeType: String, vpcId: String? = nil, subnetId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExposeServiceResponse> {
        fatalError("ExposeService is no longer available.")
    }

    /// 暴露服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func exposeService(serviceId: String, exposeType: String, vpcId: String? = nil, subnetId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExposeServiceResponse {
        fatalError("ExposeService is no longer available.")
    }
}
