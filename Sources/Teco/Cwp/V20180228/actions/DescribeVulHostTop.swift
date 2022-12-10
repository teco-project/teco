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

extension Cwp {
    /// 获取服务器风险top列表
    ///
    /// 获取服务器风险top列表
    @inlinable
    public func describeVulHostTop(_ input: DescribeVulHostTopRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVulHostTopResponse > {
        self.client.execute(action: "DescribeVulHostTop", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取服务器风险top列表
    ///
    /// 获取服务器风险top列表
    @inlinable
    public func describeVulHostTop(_ input: DescribeVulHostTopRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulHostTopResponse {
        try await self.client.execute(action: "DescribeVulHostTop", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeVulHostTop请求参数结构体
    public struct DescribeVulHostTopRequest: TCRequestModel {
        /// 获取top值，1-100
        public let top: UInt64
        
        /// 1:web-cms 漏洞，2.应用漏洞   4: Linux软件漏洞 5: windows系统漏洞 6:应急漏洞，不填或者填0时返回 1，2，4，5 的总统计数据
        public let vulCategory: UInt64?
        
        /// 是否仅统计重点关注漏洞 1=仅统计重点关注漏洞, 0=统计全部漏洞
        public let isFollowVul: UInt64?
        
        public init (top: UInt64, vulCategory: UInt64?, isFollowVul: UInt64?) {
            self.top = top
            self.vulCategory = vulCategory
            self.isFollowVul = isFollowVul
        }
        
        enum CodingKeys: String, CodingKey {
            case top = "Top"
            case vulCategory = "VulCategory"
            case isFollowVul = "IsFollowVul"
        }
    }
    
    /// DescribeVulHostTop返回参数结构体
    public struct DescribeVulHostTopResponse: TCResponseModel {
        /// 服务器风险top列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulHostTopList: [VulHostTopInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case vulHostTopList = "VulHostTopList"
            case requestId = "RequestId"
        }
    }
}