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

extension Cfw {
    /// SetNatFwEip请求参数结构体
    public struct SetNatFwEipRequest: TCRequestModel {
        /// bind：绑定eip；unbind：解绑eip；newAdd：新增防火墙弹性公网ip
        public let operationType: String

        /// 防火墙实例id
        public let cfwInstance: String

        /// 当OperationType 为bind或unbind操作时，使用该字段。
        public let eipList: [String]?

        public init(operationType: String, cfwInstance: String, eipList: [String]? = nil) {
            self.operationType = operationType
            self.cfwInstance = cfwInstance
            self.eipList = eipList
        }

        enum CodingKeys: String, CodingKey {
            case operationType = "OperationType"
            case cfwInstance = "CfwInstance"
            case eipList = "EipList"
        }
    }

    /// SetNatFwEip返回参数结构体
    public struct SetNatFwEipResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置防火墙实例弹性公网ip
    ///
    /// 设置防火墙实例弹性公网ip，目前仅支持新增模式的防火墙实例
    @inlinable @discardableResult
    public func setNatFwEip(_ input: SetNatFwEipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetNatFwEipResponse> {
        self.client.execute(action: "SetNatFwEip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置防火墙实例弹性公网ip
    ///
    /// 设置防火墙实例弹性公网ip，目前仅支持新增模式的防火墙实例
    @inlinable @discardableResult
    public func setNatFwEip(_ input: SetNatFwEipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetNatFwEipResponse {
        try await self.client.execute(action: "SetNatFwEip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置防火墙实例弹性公网ip
    ///
    /// 设置防火墙实例弹性公网ip，目前仅支持新增模式的防火墙实例
    @inlinable @discardableResult
    public func setNatFwEip(operationType: String, cfwInstance: String, eipList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetNatFwEipResponse> {
        self.setNatFwEip(.init(operationType: operationType, cfwInstance: cfwInstance, eipList: eipList), region: region, logger: logger, on: eventLoop)
    }

    /// 设置防火墙实例弹性公网ip
    ///
    /// 设置防火墙实例弹性公网ip，目前仅支持新增模式的防火墙实例
    @inlinable @discardableResult
    public func setNatFwEip(operationType: String, cfwInstance: String, eipList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetNatFwEipResponse {
        try await self.setNatFwEip(.init(operationType: operationType, cfwInstance: cfwInstance, eipList: eipList), region: region, logger: logger, on: eventLoop)
    }
}
