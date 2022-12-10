//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tics {
    /// 查询域名信誉
    ///
    /// 提供域名相关的基础信息以及与攻击事件（团伙、家族）、恶意文件等相关联信息。
    @inlinable
    public func describeDomainInfo(_ input: DescribeDomainInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDomainInfoResponse > {
        self.client.execute(action: "DescribeDomainInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询域名信誉
    ///
    /// 提供域名相关的基础信息以及与攻击事件（团伙、家族）、恶意文件等相关联信息。
    @inlinable
    public func describeDomainInfo(_ input: DescribeDomainInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainInfoResponse {
        try await self.client.execute(action: "DescribeDomainInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDomainInfo请求参数结构体
    public struct DescribeDomainInfoRequest: TCRequestModel {
        /// 要查询的域名
        public let key: String
        
        /// 附加字段，是否返回上下文。当为0时不返回上下文，当为1时返回上下文。
        public let option: UInt64?
        
        public init (key: String, option: UInt64?) {
            self.key = key
            self.option = option
        }
        
        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case option = "Option"
        }
    }
    
    /// DescribeDomainInfo返回参数结构体
    public struct DescribeDomainInfoResponse: TCResponseModel {
        /// 是否有数据，0代表有数据，1代表没有数据
        public let returnCode: UInt64
        
        /// 判定结果，如：black、white、grey
        public let result: String
        
        /// 置信度，取值0-100
        public let confidence: UInt64
        
        /// 威胁类型。
        /// botnet = 僵尸网络
        /// trojan = 木马
        /// ransomware = 勒索软件
        /// worm = 蠕虫
        /// dga = 域名生成算法
        /// c2 = c&c
        /// compromised = 失陷主机
        /// dynamicIP = 动态IP
        /// proxy = 代理
        /// idc = idc 机房
        /// whitelist = 白名单
        /// tor = 暗网
        /// miner = 挖矿
        /// maleware site = 恶意站点
        /// malware IP = 恶意IP
        /// 等等
        public let threatTypes: [String]
        
        /// 恶意标签，对应的团伙，家族等信息。
        public let tags: [TagType]
        
        /// 对应的历史上的威胁情报事件
        public let intelligences: [IntelligenceType]
        
        /// 情报相关的上下文
        public let context: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case returnCode = "ReturnCode"
            case result = "Result"
            case confidence = "Confidence"
            case threatTypes = "ThreatTypes"
            case tags = "Tags"
            case intelligences = "Intelligences"
            case context = "Context"
            case requestId = "RequestId"
        }
    }
}