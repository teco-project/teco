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

extension Cvm {
    /// CreateLaunchTemplate请求参数结构体
    public struct CreateLaunchTemplateRequest: TCRequestModel {
        /// 实例启动模板名称。长度为2~128个英文或中文字符。
        public let launchTemplateName: String

        /// 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目，所属宿主机（在专用宿主机上创建子机时指定）等属性。
        public let placement: Placement

        /// 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，传入InstanceType获取当前机型支持的镜像列表，取返回信息中的`ImageId`字段。</li>
        public let imageId: String

        /// 实例启动模板版本描述。长度为2~256个英文或中文字符。
        public let launchTemplateVersionDescription: String?

        /// 实例机型。不同实例机型指定了不同的资源规格。
        /// <br><li>对于付费模式为PREPAID或POSTPAID\_BY\_HOUR的实例创建，具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。若不指定该参数，则系统将根据当前地域的资源售卖情况动态指定默认机型。<br><li>对于付费模式为CDHPAID的实例创建，该参数以"CDH_"为前缀，根据CPU和内存配置生成，具体形式为：CDH_XCXG，例如对于创建CPU为1核，内存为1G大小的专用宿主机的实例，该参数应该为CDH_1C1G。
        public let instanceType: String?

        /// 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        public let systemDisk: SystemDisk?

        /// 实例数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        public let dataDisks: [DataDisk]?

        /// 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。若不指定该参数，则默认使用基础网络。若在此参数中指定了私有网络IP，即表示每个实例的主网卡IP；同时，InstanceCount参数必须与私有网络IP的个数一致且不能大于20。
        public let virtualPrivateCloud: VirtualPrivateCloud?

        /// 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        public let internetAccessible: InternetAccessible?

        /// 购买实例数量。包年包月实例取值范围：[1，300]，按量计费实例取值范围：[1，100]。默认取值：1。指定购买实例的数量不能超过用户所能购买的剩余配额数量，具体配额相关限制详见[CVM实例购买限制](https://cloud.tencent.com/document/product/213/2664)。
        public let instanceCount: Int64?

        /// 实例显示名称。<br><li>不指定实例显示名称则默认显示‘未命名’。</li><li>购买多台实例，如果指定模式串`{R:x}`，表示生成数字`[x, x+n-1]`，其中`n`表示购买实例的数量，例如`server_{R:3}`，购买1台时，实例显示名称为`server_3`；购买2台时，实例显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。</li><li>购买多台实例，如果不指定模式串，则在实例显示名称添加后缀`1、2...n`，其中`n`表示购买实例的数量，例如`server_`，购买2台时，实例显示名称分别为`server_1`，`server_2`。</li><li>最多支持60个字符（包含模式串）。
        public let instanceName: String?

        /// 实例登录设置。通过该参数可以设置实例的登录方式密码、密钥或保持镜像的原始登录设置。默认情况下会随机生成密码，并以站内信方式知会到用户。
        public let loginSettings: LoginSettings?

        /// 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        public let securityGroupIds: [String]?

        /// 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认公共镜像开启云监控、云安全服务；自定义镜像与镜像市场镜像默认不开启云监控，云安全服务，而使用镜像里保留的服务。
        public let enhancedService: EnhancedService?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        public let clientToken: String?

        /// 云服务器的主机名。<br><li>点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。<br><li>Windows 实例：名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。<br><li>其他类型（Linux 等）实例：字符长度为[2, 60]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。
        public let hostName: String?

        /// 定时任务。通过该参数可以为实例指定定时任务，目前仅支持定时销毁。
        public let actionTimer: ActionTimer?

        /// 置放群组id，仅支持指定一个。
        public let disasterRecoverGroupIds: [String]?

        /// 标签描述列表。通过指定该参数可以同时绑定标签到相应的资源实例，当前仅支持绑定标签到云服务器实例。
        public let tagSpecification: [TagSpecification]?

        /// 实例的市场相关选项，如竞价实例相关参数，若指定实例的付费模式为竞价付费则该参数必传。
        public let instanceMarketOptions: InstanceMarketOptionsRequest?

        /// 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16KB。关于获取此参数的详细介绍，请参阅[Windows](https://cloud.tencent.com/document/product/213/17526)和[Linux](https://cloud.tencent.com/document/product/213/17525)启动时运行命令。
        public let userData: String?

        /// 是否只预检此次请求。
        /// true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和云服务器库存。
        /// 如果检查不通过，则返回对应错误码；
        /// 如果检查通过，则返回RequestId.
        /// false（默认）：发送正常请求，通过检查后直接创建实例。
        public let dryRun: Bool?

        /// CAM角色名称。可通过[`DescribeRoleList`](https://cloud.tencent.com/document/product/598/13887)接口返回值中的`roleName`获取。
        public let camRoleName: String?

        /// 高性能计算集群ID。若创建的实例为高性能计算实例，需指定实例放置的集群，否则不可指定。
        public let hpcClusterId: String?

        /// 实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>CDHPAID：独享子机（基于专用宿主机创建，宿主机部分的资源不收费）<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        public let instanceChargeType: String?

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?

        /// 实例销毁保护标志，表示是否允许通过api接口删除实例。取值范围：<br><li>TRUE：表示开启实例保护，不允许通过api接口删除实例<br><li>FALSE：表示关闭实例保护，允许通过api接口删除实例<br><br>默认取值：FALSE。
        public let disableApiTermination: Bool?

        public init(launchTemplateName: String, placement: Placement, imageId: String, launchTemplateVersionDescription: String? = nil, instanceType: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, virtualPrivateCloud: VirtualPrivateCloud? = nil, internetAccessible: InternetAccessible? = nil, instanceCount: Int64? = nil, instanceName: String? = nil, loginSettings: LoginSettings? = nil, securityGroupIds: [String]? = nil, enhancedService: EnhancedService? = nil, clientToken: String? = nil, hostName: String? = nil, actionTimer: ActionTimer? = nil, disasterRecoverGroupIds: [String]? = nil, tagSpecification: [TagSpecification]? = nil, instanceMarketOptions: InstanceMarketOptionsRequest? = nil, userData: String? = nil, dryRun: Bool? = nil, camRoleName: String? = nil, hpcClusterId: String? = nil, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, disableApiTermination: Bool? = nil) {
            self.launchTemplateName = launchTemplateName
            self.placement = placement
            self.imageId = imageId
            self.launchTemplateVersionDescription = launchTemplateVersionDescription
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
            self.actionTimer = actionTimer
            self.disasterRecoverGroupIds = disasterRecoverGroupIds
            self.tagSpecification = tagSpecification
            self.instanceMarketOptions = instanceMarketOptions
            self.userData = userData
            self.dryRun = dryRun
            self.camRoleName = camRoleName
            self.hpcClusterId = hpcClusterId
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.disableApiTermination = disableApiTermination
        }

        enum CodingKeys: String, CodingKey {
            case launchTemplateName = "LaunchTemplateName"
            case placement = "Placement"
            case imageId = "ImageId"
            case launchTemplateVersionDescription = "LaunchTemplateVersionDescription"
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
            case actionTimer = "ActionTimer"
            case disasterRecoverGroupIds = "DisasterRecoverGroupIds"
            case tagSpecification = "TagSpecification"
            case instanceMarketOptions = "InstanceMarketOptions"
            case userData = "UserData"
            case dryRun = "DryRun"
            case camRoleName = "CamRoleName"
            case hpcClusterId = "HpcClusterId"
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case disableApiTermination = "DisableApiTermination"
        }
    }

    /// CreateLaunchTemplate返回参数结构体
    public struct CreateLaunchTemplateResponse: TCResponseModel {
        /// 当通过本接口来创建实例启动模板时会返回该参数，表示创建成功的实例启动模板`ID`。
        public let launchTemplateId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case launchTemplateId = "LaunchTemplateId"
            case requestId = "RequestId"
        }
    }

    /// 创建实例启动模板
    ///
    /// 本接口（CreateLaunchTemplate）用于创建实例启动模板。
    /// 实例启动模板是一种配置数据并可用于创建实例，其内容包含创建实例所需的配置，比如实例类型，数据盘和系统盘的类型和大小，以及安全组等信息。
    /// 初次创建实例模板后，其模板版本为默认版本1，新版本的创建可使用CreateLaunchTemplateVersion创建，版本号递增。默认情况下，在RunInstances中指定实例启动模板，若不指定模板版本号，则使用默认版本。
    @inlinable
    public func createLaunchTemplate(_ input: CreateLaunchTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLaunchTemplateResponse> {
        self.client.execute(action: "CreateLaunchTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例启动模板
    ///
    /// 本接口（CreateLaunchTemplate）用于创建实例启动模板。
    /// 实例启动模板是一种配置数据并可用于创建实例，其内容包含创建实例所需的配置，比如实例类型，数据盘和系统盘的类型和大小，以及安全组等信息。
    /// 初次创建实例模板后，其模板版本为默认版本1，新版本的创建可使用CreateLaunchTemplateVersion创建，版本号递增。默认情况下，在RunInstances中指定实例启动模板，若不指定模板版本号，则使用默认版本。
    @inlinable
    public func createLaunchTemplate(_ input: CreateLaunchTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLaunchTemplateResponse {
        try await self.client.execute(action: "CreateLaunchTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例启动模板
    ///
    /// 本接口（CreateLaunchTemplate）用于创建实例启动模板。
    /// 实例启动模板是一种配置数据并可用于创建实例，其内容包含创建实例所需的配置，比如实例类型，数据盘和系统盘的类型和大小，以及安全组等信息。
    /// 初次创建实例模板后，其模板版本为默认版本1，新版本的创建可使用CreateLaunchTemplateVersion创建，版本号递增。默认情况下，在RunInstances中指定实例启动模板，若不指定模板版本号，则使用默认版本。
    @inlinable
    public func createLaunchTemplate(launchTemplateName: String, placement: Placement, imageId: String, launchTemplateVersionDescription: String? = nil, instanceType: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, virtualPrivateCloud: VirtualPrivateCloud? = nil, internetAccessible: InternetAccessible? = nil, instanceCount: Int64? = nil, instanceName: String? = nil, loginSettings: LoginSettings? = nil, securityGroupIds: [String]? = nil, enhancedService: EnhancedService? = nil, clientToken: String? = nil, hostName: String? = nil, actionTimer: ActionTimer? = nil, disasterRecoverGroupIds: [String]? = nil, tagSpecification: [TagSpecification]? = nil, instanceMarketOptions: InstanceMarketOptionsRequest? = nil, userData: String? = nil, dryRun: Bool? = nil, camRoleName: String? = nil, hpcClusterId: String? = nil, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, disableApiTermination: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLaunchTemplateResponse> {
        self.createLaunchTemplate(CreateLaunchTemplateRequest(launchTemplateName: launchTemplateName, placement: placement, imageId: imageId, launchTemplateVersionDescription: launchTemplateVersionDescription, instanceType: instanceType, systemDisk: systemDisk, dataDisks: dataDisks, virtualPrivateCloud: virtualPrivateCloud, internetAccessible: internetAccessible, instanceCount: instanceCount, instanceName: instanceName, loginSettings: loginSettings, securityGroupIds: securityGroupIds, enhancedService: enhancedService, clientToken: clientToken, hostName: hostName, actionTimer: actionTimer, disasterRecoverGroupIds: disasterRecoverGroupIds, tagSpecification: tagSpecification, instanceMarketOptions: instanceMarketOptions, userData: userData, dryRun: dryRun, camRoleName: camRoleName, hpcClusterId: hpcClusterId, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, disableApiTermination: disableApiTermination), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例启动模板
    ///
    /// 本接口（CreateLaunchTemplate）用于创建实例启动模板。
    /// 实例启动模板是一种配置数据并可用于创建实例，其内容包含创建实例所需的配置，比如实例类型，数据盘和系统盘的类型和大小，以及安全组等信息。
    /// 初次创建实例模板后，其模板版本为默认版本1，新版本的创建可使用CreateLaunchTemplateVersion创建，版本号递增。默认情况下，在RunInstances中指定实例启动模板，若不指定模板版本号，则使用默认版本。
    @inlinable
    public func createLaunchTemplate(launchTemplateName: String, placement: Placement, imageId: String, launchTemplateVersionDescription: String? = nil, instanceType: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, virtualPrivateCloud: VirtualPrivateCloud? = nil, internetAccessible: InternetAccessible? = nil, instanceCount: Int64? = nil, instanceName: String? = nil, loginSettings: LoginSettings? = nil, securityGroupIds: [String]? = nil, enhancedService: EnhancedService? = nil, clientToken: String? = nil, hostName: String? = nil, actionTimer: ActionTimer? = nil, disasterRecoverGroupIds: [String]? = nil, tagSpecification: [TagSpecification]? = nil, instanceMarketOptions: InstanceMarketOptionsRequest? = nil, userData: String? = nil, dryRun: Bool? = nil, camRoleName: String? = nil, hpcClusterId: String? = nil, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, disableApiTermination: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLaunchTemplateResponse {
        try await self.createLaunchTemplate(CreateLaunchTemplateRequest(launchTemplateName: launchTemplateName, placement: placement, imageId: imageId, launchTemplateVersionDescription: launchTemplateVersionDescription, instanceType: instanceType, systemDisk: systemDisk, dataDisks: dataDisks, virtualPrivateCloud: virtualPrivateCloud, internetAccessible: internetAccessible, instanceCount: instanceCount, instanceName: instanceName, loginSettings: loginSettings, securityGroupIds: securityGroupIds, enhancedService: enhancedService, clientToken: clientToken, hostName: hostName, actionTimer: actionTimer, disasterRecoverGroupIds: disasterRecoverGroupIds, tagSpecification: tagSpecification, instanceMarketOptions: instanceMarketOptions, userData: userData, dryRun: dryRun, camRoleName: camRoleName, hpcClusterId: hpcClusterId, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, disableApiTermination: disableApiTermination), region: region, logger: logger, on: eventLoop)
    }
}
