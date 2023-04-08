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

import TecoCore

extension Cpdp {
    /// TerminateContract请求参数结构体
    public struct TerminateContractRequest: TCRequestModel {
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 用户ID，长度不小于5位，仅支持字母和数字的组合
        public let userId: String

        /// 指定渠道：  wechat：微信支付  qqwallet：QQ钱包
        ///  bank：网银支付  只有一个渠道时需要指定
        public let channel: String

        /// 枚举值：
        /// CONTRACT_TERMINATION_MODE_BY_OUT_CONTRACT_CODE: 按OutContractCode+ContractSceneId解约
        /// CONTRACT_TERMINATION_MODE_BY_CHANNEL_CONTRACT_CODE：按ChannelContractCode解约
        public let terminateMode: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String

        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String?

        /// 业务签约合同协议号 当TerminateMode=CONTRACT_TERMINATION_MODE_BY_OUT_CONTRACT_CODE 时 必填
        public let outContractCode: String?

        /// 签约场景ID，当 TerminateMode=CONTRACT_TERMINATION_MODE_BY_OUT_CONTRACT_CODE 时 必填，在米大师侧托管后生成
        public let contractSceneId: String?

        /// 米大师生成的协议号 当 TerminateMode=CONTRACT_TERMINATION_MODE_BY_CHANNEL_CONTRACT_CODE 时 必填
        public let channelContractCode: String?

        /// 第三方渠道合约数据，json字符串，与特定渠道有关
        public let externalContractData: String?

        /// 终止合约原因
        public let terminationReason: String?

        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let midasEnvironment: String?

        /// USER_ID: 用户ID
        /// ANONYMOUS: 匿名类型 USER_ID
        /// 默认值为 USER_ID
        public let userType: String?

        /// 签约方式
        public let contractMethod: String?

        /// 签约代扣穿透查询存量数据迁移模式
        public let migrateMode: String?

        public init(midasAppId: String, userId: String, channel: String, terminateMode: String, midasSecretId: String, midasSignature: String, subAppId: String? = nil, outContractCode: String? = nil, contractSceneId: String? = nil, channelContractCode: String? = nil, externalContractData: String? = nil, terminationReason: String? = nil, midasEnvironment: String? = nil, userType: String? = nil, contractMethod: String? = nil, migrateMode: String? = nil) {
            self.midasAppId = midasAppId
            self.userId = userId
            self.channel = channel
            self.terminateMode = terminateMode
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.subAppId = subAppId
            self.outContractCode = outContractCode
            self.contractSceneId = contractSceneId
            self.channelContractCode = channelContractCode
            self.externalContractData = externalContractData
            self.terminationReason = terminationReason
            self.midasEnvironment = midasEnvironment
            self.userType = userType
            self.contractMethod = contractMethod
            self.migrateMode = migrateMode
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case userId = "UserId"
            case channel = "Channel"
            case terminateMode = "TerminateMode"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case subAppId = "SubAppId"
            case outContractCode = "OutContractCode"
            case contractSceneId = "ContractSceneId"
            case channelContractCode = "ChannelContractCode"
            case externalContractData = "ExternalContractData"
            case terminationReason = "TerminationReason"
            case midasEnvironment = "MidasEnvironment"
            case userType = "UserType"
            case contractMethod = "ContractMethod"
            case migrateMode = "MigrateMode"
        }
    }

    /// TerminateContract返回参数结构体
    public struct TerminateContractResponse: TCResponseModel {
        /// 解约数据
        public let contractTerminateData: ResponseTerminateContract

        /// 请求处理信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case contractTerminateData = "ContractTerminateData"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 解除签约关系接口
    ///
    /// 通过此接口进行解约
    @inlinable
    public func terminateContract(_ input: TerminateContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateContractResponse> {
        self.client.execute(action: "TerminateContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解除签约关系接口
    ///
    /// 通过此接口进行解约
    @inlinable
    public func terminateContract(_ input: TerminateContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateContractResponse {
        try await self.client.execute(action: "TerminateContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解除签约关系接口
    ///
    /// 通过此接口进行解约
    @inlinable
    public func terminateContract(midasAppId: String, userId: String, channel: String, terminateMode: String, midasSecretId: String, midasSignature: String, subAppId: String? = nil, outContractCode: String? = nil, contractSceneId: String? = nil, channelContractCode: String? = nil, externalContractData: String? = nil, terminationReason: String? = nil, midasEnvironment: String? = nil, userType: String? = nil, contractMethod: String? = nil, migrateMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateContractResponse> {
        self.terminateContract(.init(midasAppId: midasAppId, userId: userId, channel: channel, terminateMode: terminateMode, midasSecretId: midasSecretId, midasSignature: midasSignature, subAppId: subAppId, outContractCode: outContractCode, contractSceneId: contractSceneId, channelContractCode: channelContractCode, externalContractData: externalContractData, terminationReason: terminationReason, midasEnvironment: midasEnvironment, userType: userType, contractMethod: contractMethod, migrateMode: migrateMode), region: region, logger: logger, on: eventLoop)
    }

    /// 解除签约关系接口
    ///
    /// 通过此接口进行解约
    @inlinable
    public func terminateContract(midasAppId: String, userId: String, channel: String, terminateMode: String, midasSecretId: String, midasSignature: String, subAppId: String? = nil, outContractCode: String? = nil, contractSceneId: String? = nil, channelContractCode: String? = nil, externalContractData: String? = nil, terminationReason: String? = nil, midasEnvironment: String? = nil, userType: String? = nil, contractMethod: String? = nil, migrateMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateContractResponse {
        try await self.terminateContract(.init(midasAppId: midasAppId, userId: userId, channel: channel, terminateMode: terminateMode, midasSecretId: midasSecretId, midasSignature: midasSignature, subAppId: subAppId, outContractCode: outContractCode, contractSceneId: contractSceneId, channelContractCode: channelContractCode, externalContractData: externalContractData, terminationReason: terminationReason, midasEnvironment: midasEnvironment, userType: userType, contractMethod: contractMethod, migrateMode: migrateMode), region: region, logger: logger, on: eventLoop)
    }
}
