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

extension Bmlb {
    /// CreateLoadBalancers请求参数结构体
    public struct CreateLoadBalancersRequest: TCRequestModel {
        /// 黑石负载均衡实例所属的私有网络ID。
        public let vpcId: String
        
        /// 负载均衡的类型，取值为open或internal。open表示公网(有日租)，internal表示内网。
        public let loadBalancerType: String
        
        /// 在私有网络内购买内网负载均衡实例的时候需要指定子网ID，内网负载均衡实例的VIP将从这个子网中产生。其他情况不用填写该字段。
        public let subnetId: String?
        
        /// 负载均衡所属项目ID。不填则属于默认项目。
        public let projectId: Int64?
        
        /// 购买黑石负载均衡实例的数量。默认值为1, 最大值为20。
        public let goodsNum: Int64?
        
        /// 黑石负载均衡的计费模式，取值为flow和bandwidth，其中flow模式表示流量模式，bandwidth表示带宽模式。默认值为flow。
        public let payMode: String?
        
        /// 负载均衡对应的TGW集群类别，取值为tunnel、fullnat或dnat。tunnel表示隧道集群，fullnat表示FULLNAT集群（普通外网负载均衡），dnat表示DNAT集群（增强型外网负载均衡）。默认值为fullnat。如需获取client IP，可以选择 tunnel 模式，fullnat 模式（tcp 通过toa 获取），dnat 模式。
        public let tgwSetType: String?
        
        /// 负载均衡的独占类别，取值为0表示非独占，1表示四层独占，2表示七层独占，3表示四层和七层独占，4表示共享容灾。
        public let exclusive: Int64?
        
        /// 指定的VIP，如果指定，则数量必须与goodsNum一致。如果不指定，则由后台分配随机VIP。
        public let specifiedVips: [String]?
        
        /// （未全地域开放）保障型负载均衡设定参数，如果类别选择保障型则需传入此参数。
        public let bzConf: CreateLoadBalancerBzConf?
        
        /// IP协议类型。可取的值为“ipv4”或“ipv6”。
        public let ipProtocolType: String?
        
        public init (vpcId: String, loadBalancerType: String, subnetId: String? = nil, projectId: Int64? = nil, goodsNum: Int64? = nil, payMode: String? = nil, tgwSetType: String? = nil, exclusive: Int64? = nil, specifiedVips: [String]? = nil, bzConf: CreateLoadBalancerBzConf? = nil, ipProtocolType: String? = nil) {
            self.vpcId = vpcId
            self.loadBalancerType = loadBalancerType
            self.subnetId = subnetId
            self.projectId = projectId
            self.goodsNum = goodsNum
            self.payMode = payMode
            self.tgwSetType = tgwSetType
            self.exclusive = exclusive
            self.specifiedVips = specifiedVips
            self.bzConf = bzConf
            self.ipProtocolType = ipProtocolType
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case loadBalancerType = "LoadBalancerType"
            case subnetId = "SubnetId"
            case projectId = "ProjectId"
            case goodsNum = "GoodsNum"
            case payMode = "PayMode"
            case tgwSetType = "TgwSetType"
            case exclusive = "Exclusive"
            case specifiedVips = "SpecifiedVips"
            case bzConf = "BzConf"
            case ipProtocolType = "IpProtocolType"
        }
    }
    
    /// CreateLoadBalancers返回参数结构体
    public struct CreateLoadBalancersResponse: TCResponseModel {
        /// 创建的黑石负载均衡实例ID。
        public let loadBalancerIds: [String]
        
        /// 创建负载均衡的异步任务ID。
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerIds = "LoadBalancerIds"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建黑石负载均衡实例
    ///
    /// 用来创建黑石负载均衡。为了使用黑石负载均衡服务，您必须要创建一个或者多个负载均衡实例。通过成功调用该接口，会返回负载均衡实例的唯一ID。用户可以购买的黑石负载均衡实例类型分为：公网类型、内网类型。公网类型负载均衡对应一个BGP VIP，可用于快速访问公网负载均衡绑定的物理服务器；内网类型负载均衡对应一个腾讯云内部的VIP，不能通过Internet访问，可快速访问内网负载均衡绑定的物理服务器。
    @inlinable
    public func createLoadBalancers(_ input: CreateLoadBalancersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateLoadBalancersResponse > {
        self.client.execute(action: "CreateLoadBalancers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建黑石负载均衡实例
    ///
    /// 用来创建黑石负载均衡。为了使用黑石负载均衡服务，您必须要创建一个或者多个负载均衡实例。通过成功调用该接口，会返回负载均衡实例的唯一ID。用户可以购买的黑石负载均衡实例类型分为：公网类型、内网类型。公网类型负载均衡对应一个BGP VIP，可用于快速访问公网负载均衡绑定的物理服务器；内网类型负载均衡对应一个腾讯云内部的VIP，不能通过Internet访问，可快速访问内网负载均衡绑定的物理服务器。
    @inlinable
    public func createLoadBalancers(_ input: CreateLoadBalancersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoadBalancersResponse {
        try await self.client.execute(action: "CreateLoadBalancers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
