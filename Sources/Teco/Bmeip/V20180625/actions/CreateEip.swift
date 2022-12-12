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

extension Bmeip {
    /// CreateEip请求参数结构体
    public struct CreateEipRequest: TCRequestModel {
        /// 申请数量，默认为1, 最大 20
        public let goodsNum: UInt64?
        
        /// EIP计费方式，flow-流量计费；bandwidth-带宽计费
        public let payMode: String?
        
        /// 带宽设定值（只在带宽计费时生效）
        public let bandwidth: UInt64?
        
        /// EIP模式，目前支持tunnel和fullnat
        public let setType: String?
        
        /// 是否使用独占集群，0：不使用，1：使用。默认为0
        public let exclusive: UInt64?
        
        /// EIP归属私有网络ID，例如vpc-k7j1t2x1
        public let vpcId: String?
        
        /// 指定申请的IP列表
        public let ipList: [String]?
        
        public init (goodsNum: UInt64? = nil, payMode: String? = nil, bandwidth: UInt64? = nil, setType: String? = nil, exclusive: UInt64? = nil, vpcId: String? = nil, ipList: [String]? = nil) {
            self.goodsNum = goodsNum
            self.payMode = payMode
            self.bandwidth = bandwidth
            self.setType = setType
            self.exclusive = exclusive
            self.vpcId = vpcId
            self.ipList = ipList
        }
        
        enum CodingKeys: String, CodingKey {
            case goodsNum = "GoodsNum"
            case payMode = "PayMode"
            case bandwidth = "Bandwidth"
            case setType = "SetType"
            case exclusive = "Exclusive"
            case vpcId = "VpcId"
            case ipList = "IpList"
        }
    }
    
    /// CreateEip返回参数结构体
    public struct CreateEipResponse: TCResponseModel {
        /// EIP列表
        public let eipIds: [String]
        
        /// 任务ID
        public let taskId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case eipIds = "EipIds"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建黑石EIP
    ///
    /// 创建黑石弹性公网IP
    @inlinable
    public func createEip(_ input: CreateEipRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateEipResponse > {
        self.client.execute(action: "CreateEip", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建黑石EIP
    ///
    /// 创建黑石弹性公网IP
    @inlinable
    public func createEip(_ input: CreateEipRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEipResponse {
        try await self.client.execute(action: "CreateEip", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
