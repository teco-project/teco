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

extension Cpdp {
    /// RegisterBehavior请求参数结构体
    public struct RegisterBehaviorRequest: TCRequest {
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String

        /// 功能标志
        /// 1：登记行为记录信息
        /// 2：查询补录信息
        public let functionFlag: Int64

        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let midasEnvironment: String?

        /// 操作点击时间
        /// yyyyMMddHHmmss
        /// 功能标志FunctionFlag=1时必输
        public let operationClickTime: String?

        /// IP地址
        /// 功能标志FunctionFlag=1时必输
        public let ipAddress: String?

        /// MAC地址
        /// 功能标志FunctionFlag=1时必输
        public let macAddress: String?

        /// 签约渠道
        /// 1:  App
        /// 2:  平台H5网页
        /// 3：公众号
        /// 4：小程序
        /// 功能标志FunctionFlag=1时必输
        public let signChannel: Int64?

        public init(midasAppId: String, subAppId: String, midasSecretId: String, midasSignature: String, functionFlag: Int64, midasEnvironment: String? = nil, operationClickTime: String? = nil, ipAddress: String? = nil, macAddress: String? = nil, signChannel: Int64? = nil) {
            self.midasAppId = midasAppId
            self.subAppId = subAppId
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.functionFlag = functionFlag
            self.midasEnvironment = midasEnvironment
            self.operationClickTime = operationClickTime
            self.ipAddress = ipAddress
            self.macAddress = macAddress
            self.signChannel = signChannel
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case subAppId = "SubAppId"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case functionFlag = "FunctionFlag"
            case midasEnvironment = "MidasEnvironment"
            case operationClickTime = "OperationClickTime"
            case ipAddress = "IpAddress"
            case macAddress = "MacAddress"
            case signChannel = "SignChannel"
        }
    }

    /// RegisterBehavior返回参数结构体
    public struct RegisterBehaviorResponse: TCResponse {
        /// 补录是否成功标志
        /// 功能标志为2时存在。
        /// S：成功
        /// F：失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let replenishSuccessFlag: String?

        /// 签约信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registerInfo: RegisterInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case replenishSuccessFlag = "ReplenishSuccessFlag"
            case registerInfo = "RegisterInfo"
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-签约行为上报
    ///
    /// 商户查询是否签约和签约行为上报
    @inlinable
    public func registerBehavior(_ input: RegisterBehaviorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterBehaviorResponse> {
        self.client.execute(action: "RegisterBehavior", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-签约行为上报
    ///
    /// 商户查询是否签约和签约行为上报
    @inlinable
    public func registerBehavior(_ input: RegisterBehaviorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterBehaviorResponse {
        try await self.client.execute(action: "RegisterBehavior", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-签约行为上报
    ///
    /// 商户查询是否签约和签约行为上报
    @inlinable
    public func registerBehavior(midasAppId: String, subAppId: String, midasSecretId: String, midasSignature: String, functionFlag: Int64, midasEnvironment: String? = nil, operationClickTime: String? = nil, ipAddress: String? = nil, macAddress: String? = nil, signChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterBehaviorResponse> {
        self.registerBehavior(.init(midasAppId: midasAppId, subAppId: subAppId, midasSecretId: midasSecretId, midasSignature: midasSignature, functionFlag: functionFlag, midasEnvironment: midasEnvironment, operationClickTime: operationClickTime, ipAddress: ipAddress, macAddress: macAddress, signChannel: signChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-签约行为上报
    ///
    /// 商户查询是否签约和签约行为上报
    @inlinable
    public func registerBehavior(midasAppId: String, subAppId: String, midasSecretId: String, midasSignature: String, functionFlag: Int64, midasEnvironment: String? = nil, operationClickTime: String? = nil, ipAddress: String? = nil, macAddress: String? = nil, signChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterBehaviorResponse {
        try await self.registerBehavior(.init(midasAppId: midasAppId, subAppId: subAppId, midasSecretId: midasSecretId, midasSignature: midasSignature, functionFlag: functionFlag, midasEnvironment: midasEnvironment, operationClickTime: operationClickTime, ipAddress: ipAddress, macAddress: macAddress, signChannel: signChannel), region: region, logger: logger, on: eventLoop)
    }
}
