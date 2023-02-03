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

extension Tse {
    /// CreateEngine请求参数结构体
    public struct CreateEngineRequest: TCRequestModel {
        /// 引擎类型。参考值：
        /// - zookeeper
        /// - nacos
        /// - consul
        /// - apollo
        /// - eureka
        /// - polaris
        public let engineType: String

        /// 引擎的开源版本。每种引擎支持的开源版本不同，请参考产品文档或者控制台购买页
        public let engineVersion: String

        /// 引擎的产品版本。参考值：
        /// - STANDARD： 标准版
        ///
        /// 引擎各版本及可选择的规格、节点数说明：
        /// apollo - STANDARD版本
        /// 规格列表：spec-qcr53kf1t（1C2G）,spec-qdr53kf2w（2C4G）
        /// 节点数：1，2，3，4，5
        ///
        /// eureka - STANDARD版本
        /// 规格列表：spec-qvj6k7t4q（1C2G）,spec-qcr53kfjt（2C4G）,spec-qvj6k7t4m（4G8G）,spec-qcr54kfjt（8C16G）,spec-qcr55kfjt（16C32G）
        /// 节点数：3，4，5
        public let engineProductVersion: String

        /// 引擎所在地域。参考值说明：
        /// 中国区 参考值：
        /// - ap-guangzhou：广州
        /// - ap-beijing：北京
        /// - ap-chengdu：成都
        /// - ap-chongqing：重庆
        /// - ap-nanjing：南京
        /// - ap-shanghai：上海
        /// - ap-hongkong：香港
        /// - ap-taipei：台北
        /// 亚太区 参考值：
        /// - ap-jakarta：雅加达
        /// - ap-singapore：新加坡
        /// 北美区 参考值
        /// - na-toronto：多伦多
        /// 金融专区 参考值
        /// - ap-beijing-fsi：北京金融
        /// - ap-shanghai-fsi：上海金融
        /// - ap-shenzhen-fsi：深圳金融
        public let engineRegion: String

        /// 引擎名称。参考值：
        /// - eurek-test
        public let engineName: String

        /// 付费类型。参考值：
        /// - 0：后付费
        /// - 1：预付费
        public let tradeType: Int64

        /// 引擎的节点规格 ID。参见EngineProductVersion字段说明
        public let engineResourceSpec: String?

        /// 引擎的节点数量。参见EngineProductVersion字段说明
        public let engineNodeNum: Int64?

        /// VPC ID。在 VPC 的子网内分配一个 IP 作为引擎的访问地址。参考值：
        /// - vpc-conz6aix
        public let vpcId: String?

        /// 子网 ID。在 VPC 的子网内分配一个 IP 作为引擎的访问地址。参考值：
        /// - subnet-ahde9me9
        public let subnetId: String?

        /// Apollo 环境配置参数列表。参数说明：
        /// 如果创建Apollo类型，此参数为必填的环境信息列表，最多可选4个环境。环境信息参数说明：
        /// - Name：环境名。参考值：prod, dev, fat, uat
        /// - EngineResourceSpec：环境内引擎的节点规格ID。参见EngineProductVersion参数说明
        /// - EngineNodeNum：环境内引擎的节点数量。参见EngineProductVersion参数说明，其中prod环境支持的节点数为2，3，4，5
        /// - StorageCapacity：配置存储空间大小，以GB为单位，步长为5.参考值：35
        /// - VpcId：VPC ID。参考值：vpc-conz6aix
        /// - SubnetId：子网 ID。参考值：subnet-ahde9me9
        public let apolloEnvParams: [ApolloEnvParam]?

        /// 引擎的标签列表。用户自定义的key/value形式，无参考值
        public let engineTags: [InstanceTagInfo]?

        /// 引擎的初始帐号信息。可设置参数：
        /// - Name：控制台初始用户名
        /// - Password：控制台初始密码
        /// - Token：引擎接口的管理员 Token
        public let engineAdmin: EngineAdmin?

        /// 预付费时长，以月为单位
        public let prepaidPeriod: Int64?

        /// 自动续费标记，仅预付费使用。参考值：
        /// - 0：不自动续费
        /// - 1：自动续费
        public let prepaidRenewFlag: Int64?

        public init(engineType: String, engineVersion: String, engineProductVersion: String, engineRegion: String, engineName: String, tradeType: Int64, engineResourceSpec: String? = nil, engineNodeNum: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, apolloEnvParams: [ApolloEnvParam]? = nil, engineTags: [InstanceTagInfo]? = nil, engineAdmin: EngineAdmin? = nil, prepaidPeriod: Int64? = nil, prepaidRenewFlag: Int64? = nil) {
            self.engineType = engineType
            self.engineVersion = engineVersion
            self.engineProductVersion = engineProductVersion
            self.engineRegion = engineRegion
            self.engineName = engineName
            self.tradeType = tradeType
            self.engineResourceSpec = engineResourceSpec
            self.engineNodeNum = engineNodeNum
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.apolloEnvParams = apolloEnvParams
            self.engineTags = engineTags
            self.engineAdmin = engineAdmin
            self.prepaidPeriod = prepaidPeriod
            self.prepaidRenewFlag = prepaidRenewFlag
        }

        enum CodingKeys: String, CodingKey {
            case engineType = "EngineType"
            case engineVersion = "EngineVersion"
            case engineProductVersion = "EngineProductVersion"
            case engineRegion = "EngineRegion"
            case engineName = "EngineName"
            case tradeType = "TradeType"
            case engineResourceSpec = "EngineResourceSpec"
            case engineNodeNum = "EngineNodeNum"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case apolloEnvParams = "ApolloEnvParams"
            case engineTags = "EngineTags"
            case engineAdmin = "EngineAdmin"
            case prepaidPeriod = "PrepaidPeriod"
            case prepaidRenewFlag = "PrepaidRenewFlag"
        }
    }

    /// CreateEngine返回参数结构体
    public struct CreateEngineResponse: TCResponseModel {
        /// 引擎实例 ID
        public let instanceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 创建引擎实例
    @inlinable
    public func createEngine(_ input: CreateEngineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEngineResponse> {
        self.client.execute(action: "CreateEngine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建引擎实例
    @inlinable
    public func createEngine(_ input: CreateEngineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEngineResponse {
        try await self.client.execute(action: "CreateEngine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建引擎实例
    @inlinable
    public func createEngine(engineType: String, engineVersion: String, engineProductVersion: String, engineRegion: String, engineName: String, tradeType: Int64, engineResourceSpec: String? = nil, engineNodeNum: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, apolloEnvParams: [ApolloEnvParam]? = nil, engineTags: [InstanceTagInfo]? = nil, engineAdmin: EngineAdmin? = nil, prepaidPeriod: Int64? = nil, prepaidRenewFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEngineResponse> {
        let input = CreateEngineRequest(engineType: engineType, engineVersion: engineVersion, engineProductVersion: engineProductVersion, engineRegion: engineRegion, engineName: engineName, tradeType: tradeType, engineResourceSpec: engineResourceSpec, engineNodeNum: engineNodeNum, vpcId: vpcId, subnetId: subnetId, apolloEnvParams: apolloEnvParams, engineTags: engineTags, engineAdmin: engineAdmin, prepaidPeriod: prepaidPeriod, prepaidRenewFlag: prepaidRenewFlag)
        return self.client.execute(action: "CreateEngine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建引擎实例
    @inlinable
    public func createEngine(engineType: String, engineVersion: String, engineProductVersion: String, engineRegion: String, engineName: String, tradeType: Int64, engineResourceSpec: String? = nil, engineNodeNum: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, apolloEnvParams: [ApolloEnvParam]? = nil, engineTags: [InstanceTagInfo]? = nil, engineAdmin: EngineAdmin? = nil, prepaidPeriod: Int64? = nil, prepaidRenewFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEngineResponse {
        let input = CreateEngineRequest(engineType: engineType, engineVersion: engineVersion, engineProductVersion: engineProductVersion, engineRegion: engineRegion, engineName: engineName, tradeType: tradeType, engineResourceSpec: engineResourceSpec, engineNodeNum: engineNodeNum, vpcId: vpcId, subnetId: subnetId, apolloEnvParams: apolloEnvParams, engineTags: engineTags, engineAdmin: engineAdmin, prepaidPeriod: prepaidPeriod, prepaidRenewFlag: prepaidRenewFlag)
        return try await self.client.execute(action: "CreateEngine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
