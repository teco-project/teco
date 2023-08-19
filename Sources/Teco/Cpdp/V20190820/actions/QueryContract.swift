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
    /// QueryContract请求参数结构体
    public struct QueryContractRequest: TCRequest {
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 用户ID，长度不小于5位，仅支持字母和数字的组合
        public let userId: String

        /// 指定渠道：  wechat：微信支付  qqwallet：QQ钱包
        ///  bank：网银支付  只有一个渠道时需要指定
        public let channel: String

        /// 枚举值：
        /// CONTRACT_QUERY_MODE_BY_OUT_CONTRACT_CODE：按 OutContractCode + ContractSceneId 查询
        /// CONTRACT_QUERY_MODE_BY_CHANNEL_CONTRACT_CODE：按ChannelContractCode查询
        public let contractQueryMode: String

        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String?

        /// 业务签约合同协议号 当 ContractQueryMode=CONTRACT_QUERY_MODE_BY_OUT_CONTRACT_CODE 时 ，必填
        public let outContractCode: String?

        /// 签约场景ID，当 ContractQueryMode=CONTRACT_QUERY_MODE_BY_OUT_CONTRACT_CODE 时 必填，在米大师侧托管后生成
        public let contractSceneId: String?

        /// 米大师生成的协议号 ，当 ContractQueryMode=CONTRACT_QUERY_MODE_BY_CHANNEL_CONTRACT_CODE 时必填
        public let channelContractCode: String?

        /// 第三方渠道合约数据，为json字符串，与特定渠道有关
        public let externalContractData: String?

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

        /// 签约代扣穿透查询存量数据迁移模式
        public let migrateMode: String?

        /// 签约方式
        public let contractMethod: String?

        public init(midasAppId: String, userId: String, channel: String, contractQueryMode: String, midasSignature: String, midasSecretId: String, subAppId: String? = nil, outContractCode: String? = nil, contractSceneId: String? = nil, channelContractCode: String? = nil, externalContractData: String? = nil, midasEnvironment: String? = nil, userType: String? = nil, migrateMode: String? = nil, contractMethod: String? = nil) {
            self.midasAppId = midasAppId
            self.userId = userId
            self.channel = channel
            self.contractQueryMode = contractQueryMode
            self.midasSignature = midasSignature
            self.midasSecretId = midasSecretId
            self.subAppId = subAppId
            self.outContractCode = outContractCode
            self.contractSceneId = contractSceneId
            self.channelContractCode = channelContractCode
            self.externalContractData = externalContractData
            self.midasEnvironment = midasEnvironment
            self.userType = userType
            self.migrateMode = migrateMode
            self.contractMethod = contractMethod
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case userId = "UserId"
            case channel = "Channel"
            case contractQueryMode = "ContractQueryMode"
            case midasSignature = "MidasSignature"
            case midasSecretId = "MidasSecretId"
            case subAppId = "SubAppId"
            case outContractCode = "OutContractCode"
            case contractSceneId = "ContractSceneId"
            case channelContractCode = "ChannelContractCode"
            case externalContractData = "ExternalContractData"
            case midasEnvironment = "MidasEnvironment"
            case userType = "UserType"
            case migrateMode = "MigrateMode"
            case contractMethod = "ContractMethod"
        }
    }

    /// QueryContract返回参数结构体
    public struct QueryContractResponse: TCResponse {
        /// 签约数据
        public let contractData: ResponseQueryContract

        /// 请求处理信息
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case contractData = "ContractData"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 查询签约数据接口
    ///
    /// 通过此接口查询签约数据
    @inlinable
    public func queryContract(_ input: QueryContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryContractResponse> {
        self.client.execute(action: "QueryContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询签约数据接口
    ///
    /// 通过此接口查询签约数据
    @inlinable
    public func queryContract(_ input: QueryContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryContractResponse {
        try await self.client.execute(action: "QueryContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询签约数据接口
    ///
    /// 通过此接口查询签约数据
    @inlinable
    public func queryContract(midasAppId: String, userId: String, channel: String, contractQueryMode: String, midasSignature: String, midasSecretId: String, subAppId: String? = nil, outContractCode: String? = nil, contractSceneId: String? = nil, channelContractCode: String? = nil, externalContractData: String? = nil, midasEnvironment: String? = nil, userType: String? = nil, migrateMode: String? = nil, contractMethod: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryContractResponse> {
        self.queryContract(.init(midasAppId: midasAppId, userId: userId, channel: channel, contractQueryMode: contractQueryMode, midasSignature: midasSignature, midasSecretId: midasSecretId, subAppId: subAppId, outContractCode: outContractCode, contractSceneId: contractSceneId, channelContractCode: channelContractCode, externalContractData: externalContractData, midasEnvironment: midasEnvironment, userType: userType, migrateMode: migrateMode, contractMethod: contractMethod), region: region, logger: logger, on: eventLoop)
    }

    /// 查询签约数据接口
    ///
    /// 通过此接口查询签约数据
    @inlinable
    public func queryContract(midasAppId: String, userId: String, channel: String, contractQueryMode: String, midasSignature: String, midasSecretId: String, subAppId: String? = nil, outContractCode: String? = nil, contractSceneId: String? = nil, channelContractCode: String? = nil, externalContractData: String? = nil, midasEnvironment: String? = nil, userType: String? = nil, migrateMode: String? = nil, contractMethod: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryContractResponse {
        try await self.queryContract(.init(midasAppId: midasAppId, userId: userId, channel: channel, contractQueryMode: contractQueryMode, midasSignature: midasSignature, midasSecretId: midasSecretId, subAppId: subAppId, outContractCode: outContractCode, contractSceneId: contractSceneId, channelContractCode: channelContractCode, externalContractData: externalContractData, midasEnvironment: midasEnvironment, userType: userType, migrateMode: migrateMode, contractMethod: contractMethod), region: region, logger: logger, on: eventLoop)
    }
}
