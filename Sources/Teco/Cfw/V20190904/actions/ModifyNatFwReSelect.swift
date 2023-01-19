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

extension Cfw {
    /// ModifyNatFwReSelect请求参数结构体
    public struct ModifyNatFwReSelectRequest: TCRequestModel {
        /// 模式 1：接入模式；0：新增模式
        public let mode: Int64

        /// 防火墙实例id
        public let cfwInstance: String

        /// 接入模式重新接入的nat网关列表，其中NatGwList和VpcList只能传递一个。
        public let natGwList: [String]?

        /// 新增模式重新接入的vpc列表，其中NatGwList和NatgwList只能传递一个。
        public let vpcList: [String]?

        public init(mode: Int64, cfwInstance: String, natGwList: [String]? = nil, vpcList: [String]? = nil) {
            self.mode = mode
            self.cfwInstance = cfwInstance
            self.natGwList = natGwList
            self.vpcList = vpcList
        }

        enum CodingKeys: String, CodingKey {
            case mode = "Mode"
            case cfwInstance = "CfwInstance"
            case natGwList = "NatGwList"
            case vpcList = "VpcList"
        }
    }

    /// ModifyNatFwReSelect返回参数结构体
    public struct ModifyNatFwReSelectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 防火墙实例重新选择vpc或nat
    @inlinable
    public func modifyNatFwReSelect(_ input: ModifyNatFwReSelectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNatFwReSelectResponse> {
        self.client.execute(action: "ModifyNatFwReSelect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 防火墙实例重新选择vpc或nat
    @inlinable
    public func modifyNatFwReSelect(_ input: ModifyNatFwReSelectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatFwReSelectResponse {
        try await self.client.execute(action: "ModifyNatFwReSelect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 防火墙实例重新选择vpc或nat
    @inlinable
    public func modifyNatFwReSelect(mode: Int64, cfwInstance: String, natGwList: [String]? = nil, vpcList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNatFwReSelectResponse> {
        self.modifyNatFwReSelect(ModifyNatFwReSelectRequest(mode: mode, cfwInstance: cfwInstance, natGwList: natGwList, vpcList: vpcList), region: region, logger: logger, on: eventLoop)
    }

    /// 防火墙实例重新选择vpc或nat
    @inlinable
    public func modifyNatFwReSelect(mode: Int64, cfwInstance: String, natGwList: [String]? = nil, vpcList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatFwReSelectResponse {
        try await self.modifyNatFwReSelect(ModifyNatFwReSelectRequest(mode: mode, cfwInstance: cfwInstance, natGwList: natGwList, vpcList: vpcList), region: region, logger: logger, on: eventLoop)
    }
}
