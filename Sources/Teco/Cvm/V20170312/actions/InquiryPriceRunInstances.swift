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

extension Cvm {
    /// InquiryPriceRunInstances请求参数结构体
    public struct InquiryPriceRunInstancesRequest: TCRequestModel {
        /// 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        ///  <b>注：如果您不指定LaunchTemplate参数，则Placement为必选参数。若同时传递Placement和LaunchTemplate，则默认覆盖LaunchTemplate中对应的Placement的值。</b>
        public let placement: Placement
        
        /// 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，取返回信息中的`ImageId`字段。</li>
        ///  <b>注：如果您不指定LaunchTemplate参数，则ImageId为必选参数。若同时传递ImageId和LaunchTemplate，则默认覆盖LaunchTemplate中对应的ImageId的值。</b>
        public let imageId: String
        
        /// 实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        public let instanceChargeType: String?
        
        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?
        
        /// 实例机型。不同实例机型指定了不同的资源规格，具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。若不指定该参数，则默认机型为S1.SMALL1。
        public let instanceType: String?
        
        /// 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        public let systemDisk: SystemDisk?
        
        /// 实例数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        public let dataDisks: [DataDisk]?
        
        /// 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。若不指定该参数，则默认使用基础网络。若在此参数中指定了私有网络IP，那么InstanceCount参数只能为1。
        public let virtualPrivateCloud: VirtualPrivateCloud?
        
        /// 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        public let internetAccessible: InternetAccessible?
        
        /// 购买实例数量。取值范围：[1，100]。默认取值：1。指定购买实例的数量不能超过用户所能购买的剩余配额数量，具体配额相关限制详见[CVM实例购买限制](https://cloud.tencent.com/document/product/213/2664)。
        public let instanceCount: Int64?
        
        /// 实例显示名称。<br><li>不指定实例显示名称则默认显示‘未命名’。</li><li>购买多台实例，如果指定模式串`{R:x}`，表示生成数字`[x, x+n-1]`，其中`n`表示购买实例的数量，例如`server_{R:3}`，购买1台时，实例显示名称为`server_3`；购买2台时，实例显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。</li><li>购买多台实例，如果不指定模式串，则在实例显示名称添加后缀`1、2...n`，其中`n`表示购买实例的数量，例如`server_`，购买2台时，实例显示名称分别为`server_1`，`server_2`。</li><li>最多支持60个字符（包含模式串）。
        public let instanceName: String?
        
        /// 实例登录设置。通过该参数可以设置实例的登录方式密码、密钥或保持镜像的原始登录设置。默认情况下会随机生成密码，并以站内信方式知会到用户。
        public let loginSettings: LoginSettings?
        
        /// 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则默认不绑定安全组。
        public let securityGroupIds: [String]?
        
        /// 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        public let enhancedService: EnhancedService?
        
        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。<br>更多详细信息请参阅：如何保证幂等性。
        public let clientToken: String?
        
        /// 云服务器的主机名。<br><li>点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。<br><li>Windows 实例：名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。<br><li>其他类型（Linux 等）实例：字符长度为[2, 30]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。
        public let hostName: String?
        
        /// 标签描述列表。通过指定该参数可以同时绑定标签到相应的资源实例，当前仅支持绑定标签到云服务器实例。
        public let tagSpecification: [TagSpecification]?
        
        /// 实例的市场相关选项，如竞价实例相关参数
        public let instanceMarketOptions: InstanceMarketOptionsRequest?
        
        /// 高性能计算集群ID。
        public let hpcClusterId: String?
        
        public init (placement: Placement, imageId: String, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceType: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, virtualPrivateCloud: VirtualPrivateCloud? = nil, internetAccessible: InternetAccessible? = nil, instanceCount: Int64? = nil, instanceName: String? = nil, loginSettings: LoginSettings? = nil, securityGroupIds: [String]? = nil, enhancedService: EnhancedService? = nil, clientToken: String? = nil, hostName: String? = nil, tagSpecification: [TagSpecification]? = nil, instanceMarketOptions: InstanceMarketOptionsRequest? = nil, hpcClusterId: String? = nil) {
            self.placement = placement
            self.imageId = imageId
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.instanceType = instanceType
            self.systemDisk = systemDisk
            self.dataDisks = dataDisks
            self.virtualPrivateCloud = virtualPrivateCloud
            self.internetAccessible = internetAccessible
            self.instanceCount = instanceCount
            self.instanceName = instanceName
            self.loginSettings = loginSettings
            self.securityGroupIds = securityGroupIds
            self.enhancedService = enhancedService
            self.clientToken = clientToken
            self.hostName = hostName
            self.tagSpecification = tagSpecification
            self.instanceMarketOptions = instanceMarketOptions
            self.hpcClusterId = hpcClusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case placement = "Placement"
            case imageId = "ImageId"
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case instanceType = "InstanceType"
            case systemDisk = "SystemDisk"
            case dataDisks = "DataDisks"
            case virtualPrivateCloud = "VirtualPrivateCloud"
            case internetAccessible = "InternetAccessible"
            case instanceCount = "InstanceCount"
            case instanceName = "InstanceName"
            case loginSettings = "LoginSettings"
            case securityGroupIds = "SecurityGroupIds"
            case enhancedService = "EnhancedService"
            case clientToken = "ClientToken"
            case hostName = "HostName"
            case tagSpecification = "TagSpecification"
            case instanceMarketOptions = "InstanceMarketOptions"
            case hpcClusterId = "HpcClusterId"
        }
    }
    
    /// InquiryPriceRunInstances返回参数结构体
    public struct InquiryPriceRunInstancesResponse: TCResponseModel {
        /// 该参数表示对应配置实例的价格。
        public let price: Price
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }
    
    /// 创建实例询价
    ///
    /// 本接口(InquiryPriceRunInstances)用于创建实例询价。本接口仅允许针对购买限制范围内的实例配置进行询价, 详见：[创建实例](https://cloud.tencent.com/document/api/213/15730)。
    @inlinable
    public func inquiryPriceRunInstances(_ input: InquiryPriceRunInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceRunInstancesResponse > {
        self.client.execute(action: "InquiryPriceRunInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建实例询价
    ///
    /// 本接口(InquiryPriceRunInstances)用于创建实例询价。本接口仅允许针对购买限制范围内的实例配置进行询价, 详见：[创建实例](https://cloud.tencent.com/document/api/213/15730)。
    @inlinable
    public func inquiryPriceRunInstances(_ input: InquiryPriceRunInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRunInstancesResponse {
        try await self.client.execute(action: "InquiryPriceRunInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
