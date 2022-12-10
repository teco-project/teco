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

extension Cdn {
    /// 查询域名节点状态
    ///
    /// DescribeIpStatus 用于查询域名所在加速平台的边缘节点、回源节点明细。注意事项：暂不支持查询边缘节点信息并且数据会存在一定延迟。
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41954"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeIpStatus(_ input: DescribeIpStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIpStatusResponse > {
        self.client.execute(action: "DescribeIpStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询域名节点状态
    ///
    /// DescribeIpStatus 用于查询域名所在加速平台的边缘节点、回源节点明细。注意事项：暂不支持查询边缘节点信息并且数据会存在一定延迟。
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41954"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeIpStatus(_ input: DescribeIpStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIpStatusResponse {
        try await self.client.execute(action: "DescribeIpStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeIpStatus请求参数结构体
    public struct DescribeIpStatusRequest: TCRequestModel {
        /// 加速域名
        public let domain: String
        
        /// 节点类型：
        /// edge：表示边缘节点
        /// last：表示回源层节点
        /// 不填充情况下，默认返回边缘节点信息
        public let layer: String?
        
        /// 查询区域：
        /// mainland: 国内节点
        /// overseas: 海外节点
        /// global: 全球节点
        public let area: String?
        
        /// 是否以IP段的格式返回。
        public let segment: Bool?
        
        /// 是否查询节点 IPV6 信息。
        public let showIpv6: Bool?
        
        /// 是否对IPV6进行缩写。
        public let abbreviationIpv6: Bool?
        
        public init (domain: String, layer: String?, area: String?, segment: Bool?, showIpv6: Bool?, abbreviationIpv6: Bool?) {
            self.domain = domain
            self.layer = layer
            self.area = area
            self.segment = segment
            self.showIpv6 = showIpv6
            self.abbreviationIpv6 = abbreviationIpv6
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case layer = "Layer"
            case area = "Area"
            case segment = "Segment"
            case showIpv6 = "ShowIpv6"
            case abbreviationIpv6 = "AbbreviationIpv6"
        }
    }
    
    /// DescribeIpStatus返回参数结构体
    public struct DescribeIpStatusResponse: TCResponseModel {
        /// 节点列表
        public let ips: [IpStatus]
        
        /// 节点总个数
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ips = "Ips"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}