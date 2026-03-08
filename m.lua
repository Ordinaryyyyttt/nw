local r = game:GetService("Players")
local i = game:GetService("CoreGui")
local x = game:GetService("UserInputService")
local K = game:GetService("VirtualInputManager")
local z = r.LocalPlayer 
local Q = game:GetService("TweenService")
local T = "DexterHUB_v2"

if _G[T] then _G[T]() end 
local F = true 
_G[T] = function()
    F = false 
    if i:FindFirstChild("DexterHUB") then i.DexterHUB:Destroy() end 
end

pcall(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            local r = game:GetService("CoreGui").RobloxGui.FocusNavigationCoreScriptsWrapper 
            r.Visible = false 
        end)
    end)
end)

local c = x.TouchEnabled 
local a = c and 300 or 460 
local D = c and 250 or 310 
local O = c and 85 or 105 
local j = c and 42 or 46 
local y = c and 9 or 11 
local d = c and 32 or 36 
local q = c and 10 or 12 
local n = c and 13 or 15 

local function b(r) return r.UserInputType == Enum.UserInputType.MouseButton1 or r.UserInputType == Enum.UserInputType.Touch end 
local function u(r) return r.UserInputType == Enum.UserInputType.MouseMovement or r.UserInputType == Enum.UserInputType.Touch end 

local function L()
    local r = Instance.new("Sound")
    r.SoundId = "rbxassetid://139658322785649"
    r.Volume = .5 
    r.Parent = game:GetService("SoundService")
    r:Play()
    game:GetService("Debris"):AddItem(r,1)
end 

local R = {
    {name="BambuApi", label="Api", rarity="Spesial", color=Color3.fromRGB(255,100,30)},
    {name="BambuAwan", label="Awan", rarity="Baru", color=Color3.fromRGB(180,220,255)},
    {name="BambuBayang", label="Bayang", rarity="Baru", color=Color3.fromRGB(60,20,100)},
    {name="BambuHati", label="Hati", rarity="Baru", color=Color3.fromRGB(255,80,120)},
    {name="BambuMetalik", label="Metalik", rarity="Spesial", color=Color3.fromRGB(180,180,200)},
    {name="BambuPelangi", label="Pelangi", rarity="Spesial", color=Color3.fromRGB(255,100,200)}
}

local v = {Biasa=Color3.fromRGB(180,180,180), Langka=Color3.fromRGB(80,150,255), Spesial=Color3.fromRGB(255,60,60), Baru=Color3.fromRGB(200,80,255)}

local function M(r)
    local i = {}
    for r,x in ipairs(r:GetDescendants()) do 
        if x:IsA("Attachment") and not i[x.Name] then i[x.Name] = x end 
    end 
    for r,x in ipairs(r:GetDescendants()) do 
        if x:IsA("Beam") then 
            local r = x.Attachment0 and x.Attachment0.Name 
            local K = x.Attachment1 and x.Attachment1.Name 
            if r and i[r] then x.Attachment0 = i[r] end 
            if K and i[K] then x.Attachment1 = i[K] end 
        end 
    end 
end 

local function A(r,i,x)
    local K = r:FindFirstChild(x)
    local z = i:FindFirstChild(x)
    if not K or not z then return end 
    for r,i in ipairs(K:GetChildren()) do 
        if not i:IsA("WeldConstraint") then i:Destroy() end 
    end 
    pcall(function()
        K.Color = z.Color 
        K.Material = z.Material 
        K.Transparency = z.Transparency 
        if K:IsA("UnionOperation") then K.UsePartColor = true end 
    end)
    local Q = z:Clone()
    Q:PivotTo(K:GetPivot())
    for r,i in ipairs(Q:GetChildren()) do 
        if not i:IsA("WeldConstraint") then i.Parent = K end 
    end 
    Q:Destroy()
    for r,i in ipairs(K:GetDescendants()) do 
        if i:IsA("ParticleEmitter") then i.Enabled = true i:Clear() end 
    end 
end 

local function e(r)
    local i = z.Character 
    if not i then return end 
    local x = workspace:FindFirstChild("BambuDisplay") and workspace.BambuDisplay:FindFirstChild("Bambu")
    if not x then return end 
    local K = x:FindFirstChild(r)
    if not K then return end 
    local Q = workspace:FindFirstChild(z.Name)
    local T = Q and Q:FindFirstChild("BackWeapon")
    if not T then T = i:FindFirstChild("BackWeapon") end 
    if not T then return end 
    A(T,K,"Batang")
    A(T,K,"Ruas")
    M(T)
    print("[Skin] Applied: "..r)
end 

local Z = {
    CYBERPUNK={primary=Color3.fromRGB(100,30,220), mid=Color3.fromRGB(65,15,160), dark=Color3.fromRGB(30,10,100), headerBg=Color3.fromRGB(55,15,120), accent=Color3.fromRGB(150,80,255), glow=Color3.fromRGB(100,40,200), activeTab=Color3.fromRGB(65,20,150), logText=Color3.fromRGB(160,100,255)},
    CRIMSON={primary=Color3.fromRGB(200,20,40), mid=Color3.fromRGB(150,15,30), dark=Color3.fromRGB(80,8,16), headerBg=Color3.fromRGB(120,10,25), accent=Color3.fromRGB(255,80,100), glow=Color3.fromRGB(200,30,50), activeTab=Color3.fromRGB(160,15,35), logText=Color3.fromRGB(255,100,120)},
    MATRIX={primary=Color3.fromRGB(0,180,60), mid=Color3.fromRGB(0,130,40), dark=Color3.fromRGB(0,60,20), headerBg=Color3.fromRGB(0,80,25), accent=Color3.fromRGB(50,255,120), glow=Color3.fromRGB(0,160,60), activeTab=Color3.fromRGB(0,110,40), logText=Color3.fromRGB(80,255,140)},
    SAKURA={primary=Color3.fromRGB(210,60,140), mid=Color3.fromRGB(170,40,110), dark=Color3.fromRGB(100,20,65), headerBg=Color3.fromRGB(130,30,85), accent=Color3.fromRGB(255,130,200), glow=Color3.fromRGB(210,70,150), activeTab=Color3.fromRGB(160,40,110), logText=Color3.fromRGB(255,150,210)},
    OCEAN={primary=Color3.fromRGB(0,100,220), mid=Color3.fromRGB(0,70,170), dark=Color3.fromRGB(0,35,100), headerBg=Color3.fromRGB(0,55,130), accent=Color3.fromRGB(60,160,255), glow=Color3.fromRGB(0,110,220), activeTab=Color3.fromRGB(0,75,170), logText=Color3.fromRGB(80,180,255)},
    FLAME={primary=Color3.fromRGB(220,100,0), mid=Color3.fromRGB(180,70,0), dark=Color3.fromRGB(100,35,0), headerBg=Color3.fromRGB(140,55,0), accent=Color3.fromRGB(255,160,50), glow=Color3.fromRGB(220,110,0), activeTab=Color3.fromRGB(170,65,0), logText=Color3.fromRGB(255,180,70)}
}

local X = "CYBERPUNK"
local w = {}
local function k(r)
    local i = Z[r]
    if not i then return end 
    X = r 
    if w.Header then w.Header.BackgroundColor3 = i.headerBg end 
    if w.HeaderGrad then w.HeaderGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,i.primary), ColorSequenceKeypoint.new(.6,i.mid), ColorSequenceKeypoint.new(1,i.dark)}) end 
    if w.HeaderCover then w.HeaderCover.BackgroundColor3 = i.headerBg end 
    if w.HeaderLine then w.HeaderLine.BackgroundColor3 = i.accent end 
    if w.LineGrad then w.LineGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,i.accent), ColorSequenceKeypoint.new(.5,Color3.new(1,1,1)), ColorSequenceKeypoint.new(1,i.accent)}) end 
    if w.HeaderDot then w.HeaderDot.BackgroundColor3 = i.accent end 
    if w.PremBadge then w.PremBadge.BackgroundColor3 = i.mid end 
    if w.BadgeGrad then w.BadgeGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,i.accent), ColorSequenceKeypoint.new(1,i.primary)}) end 
    if w.GlowWrapper then w.GlowWrapper.BackgroundColor3 = i.glow end 
    if w.SideDivider then w.SideDivider.BackgroundColor3 = i.mid end 
    if w.DivGrad then w.DivGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,i.mid), ColorSequenceKeypoint.new(.5,i.accent), ColorSequenceKeypoint.new(1,i.mid)}) end 
    if w.MiniIconStroke then w.MiniIconStroke.Color = i.accent end 
    if w.MiniIcon then w.MiniIcon.BackgroundColor3 = i.headerBg end 
    if w.DropMainBtn then w.DropMainBtn.BackgroundColor3 = i.mid end 
    if w.dropBtnGrad then w.dropBtnGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,i.primary), ColorSequenceKeypoint.new(1,i.dark)}) end 
    if w.dropStroke then w.dropStroke.Color = i.mid end 
    if w.logStroke then w.logStroke.Color = i.mid end 
    if w.LogAwalan then w.LogAwalan.TextColor3 = i.logText end 
    if w.ScrollBar then w.ScrollBar.ScrollBarImageColor3 = i.accent end 
    for r,x in pairs(w) do 
        if type(x) == "table" and x.fill then 
            x.fill.BackgroundColor3 = i.primary 
            x.knobMinStroke.Color = i.accent 
            x.knobMaxStroke.Color = i.accent 
            x.knobMax.BackgroundColor3 = i.accent 
            x.valLbl.TextColor3 = i.logText 
        end 
    end 
    if w.activeTabColor then w.activeTabColor.value = i.activeTab end 
    if w.SkinDropBtn then w.SkinDropBtn.BackgroundColor3 = i.mid end 
    if w.SkinDropGrad then w.SkinDropGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,i.primary), ColorSequenceKeypoint.new(1,i.dark)}) end 
    if w.SkinDropStroke then w.SkinDropStroke.Color = i.mid end 
    if w.SkinFrameStroke then w.SkinFrameStroke.Color = i.mid end 
    if w.SkinInfoText then w.SkinInfoText.TextColor3 = i.logText end 
    if w.ResizeHandle then w.ResizeHandle.BackgroundColor3 = i.mid end 
    if w.ResizeStroke then w.ResizeStroke.Color = i.accent end 
end 

local m = Instance.new("ScreenGui")
m.Name = "DexterHUB"
m.Parent = pcall(function() return i.Name end) and i or z:WaitForChild("PlayerGui")
m.ResetOnSpawn = false 
m.IgnoreGuiInset = true 

local P = Instance.new("Frame")
P.Name = "GlowWrapper"
P.Size = UDim2.new(0,a+4,0,D+4)
P.Position = UDim2.new(.5,-(a/2)-2,.5,-(D/2)-2)
P.BackgroundColor3 = Color3.fromRGB(100,40,200)
P.BackgroundTransparency = .6 
P.BorderSizePixel = 0 
P.ZIndex = 0 
P.Parent = m
Instance.new("UICorner",P).CornerRadius = UDim.new(0,18)

local Y = Instance.new("Frame")
Y.Name = "MainFrame"
Y.Size = UDim2.new(0,a,0,D)
Y.Position = UDim2.new(.5,-a/2,.5,-D/2)
Y.BackgroundColor3 = Color3.fromRGB(7,7,13)
Y.BorderSizePixel = 0 
Y.ClipsDescendants = true 
Y.Parent = m
Instance.new("UICorner",Y).CornerRadius = UDim.new(0,16)

local s = Instance.new("TextButton")
s.Name = "ResizeHandle"
s.Size = UDim2.new(0, c and 24 or 24, 0, c and 24 or 24)
s.BackgroundColor3 = Color3.fromRGB(65,15,160)
s.Text = "↘️"
s.TextColor3 = Color3.fromRGB(200,160,255)
s.Font = Enum.Font.GothamBold 
s.TextSize = c and 12 or 14 
s.ZIndex = 10 
s.Parent = m
Instance.new("UICorner",s).CornerRadius = UDim.new(0,8)

local N = Instance.new("UIStroke",s)
N.Color = Color3.fromRGB(150,80,255)
N.Thickness = 1.5 
N.Transparency = .1 
w.ResizeHandle = s 
w.ResizeStroke = N 

local function S()
    local r = Y.Position 
    local i = Y.Size 
    local x = s.Size.X.Offset 
    s.Position = UDim2.new(r.X.Scale,(r.X.Offset+i.X.Offset)-x,r.Y.Scale,(r.Y.Offset+i.Y.Offset)-x)
end
game:GetService("RunService").RenderStepped:Connect(function() if Y.Visible then S() end end)
S()

local t = false 
local o,g,I 
local function B(r,i)
    local x = c and 260 or 300 
    local K = c and 500 or 720 
    local z = c and 200 or 230 
    local Q = c and 480 or 600 
    return math.clamp(r,x,K), math.clamp(i,z,Q)
end 

local function l()
    local r = Y.Position 
    P.Position = UDim2.new(r.X.Scale,r.X.Offset-2,r.Y.Scale,r.Y.Offset-2)
    P.Size = UDim2.new(0,Y.Size.X.Offset+4,0,Y.Size.Y.Offset+4)
    S()
end 

s.InputBegan:Connect(function(r)
    if not b(r) then return end 
    t = true 
    o = r.Position 
    g = Y.Size.X.Offset 
    I = Y.Size.Y.Offset 
    r.Changed:Connect(function() if r.UserInputState == Enum.UserInputState.End then t = false end end)
end)

local p = Instance.new("Frame")
p.Name = "Header"
p.Size = UDim2.new(1,0,0,j)
p.Position = UDim2.new(0,0,0,0)
p.BackgroundColor3 = Color3.fromRGB(55,15,120)
p.BorderSizePixel = 0 
p.Parent = Y
Instance.new("UICorner",p).CornerRadius = UDim.new(0,16)

local C = Instance.new("Frame")
C.Size = UDim2.new(1,0,.5,0)
C.Position = UDim2.new(0,0,.5,0)
C.BackgroundColor3 = Color3.fromRGB(55,15,120)
C.BorderSizePixel = 0 
C.Parent = p 
C.ZIndex = p.ZIndex-1 

local J = Instance.new("UIGradient",p)
J.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(100,30,220)), ColorSequenceKeypoint.new(.6,Color3.fromRGB(65,15,160)), ColorSequenceKeypoint.new(1,Color3.fromRGB(30,10,100))})
J.Rotation = 135 

local H = Instance.new("Frame")
H.Size = UDim2.new(1,0,0,1)
H.Position = UDim2.new(0,0,1,-1)
H.BackgroundColor3 = Color3.fromRGB(150,80,255)
H.BorderSizePixel = 0 
H.Parent = p 

local U = Instance.new("UIGradient",H)
U.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(150,80,255)), ColorSequenceKeypoint.new(.5,Color3.fromRGB(200,130,255)), ColorSequenceKeypoint.new(1,Color3.fromRGB(150,80,255))})

local V = Instance.new("Frame")
V.Size = UDim2.new(0,7,0,7)
V.Position = UDim2.new(0,10,.5,-3.5)
V.BackgroundColor3 = Color3.fromRGB(180,120,255)
V.BorderSizePixel = 0 
V.Parent = p
Instance.new("UICorner",V).CornerRadius = UDim.new(1,0)

local h = Instance.new("TextLabel")
h.Size = UDim2.new(0,140,1,0)
h.Position = UDim2.new(0,22,0,0)
h.BackgroundTransparency = 1 
h.Text = "DexterHUB"
h.TextColor3 = Color3.new(1,1,1)
h.Font = Enum.Font.GothamBold 
h.TextSize = n 
h.TextXAlignment = Enum.TextXAlignment.Left 
h.Parent = p 
w.Header = p 
w.HeaderGrad = J 
w.HeaderCover = C 
w.HeaderLine = H 
w.LineGrad = U 
w.HeaderDot = V 

if not c then 
    local r = Instance.new("Frame")
    r.Size = UDim2.new(0,64,0,17)
    r.Position = UDim2.new(0,130,.5,-8.5)
    r.BackgroundColor3 = Color3.fromRGB(120,60,220)
    r.BorderSizePixel = 0 
    r.Parent = p
    Instance.new("UICorner",r).CornerRadius = UDim.new(1,0)
    local i = Instance.new("UIGradient",r)
    i.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(160,80,255)), ColorSequenceKeypoint.new(1,Color3.fromRGB(100,40,200))})
    local x = Instance.new("TextLabel")
    x.Size = UDim2.new(1,0,1,0)
    x.BackgroundTransparency = 1 
    x.Text = "PREMIUM"
    x.TextColor3 = Color3.new(1,1,1)
    x.Font = Enum.Font.GothamBold 
    x.TextSize = 9 
    x.Parent = r 
    w.PremBadge = r 
    w.BadgeGrad = i 
end 

w.GlowWrapper = P 
local W = c and 18 or 26 
local E = Instance.new("TextButton")
E.Size = UDim2.new(0,W,0,W)
E.Position = UDim2.new(1,-(W*2+10),.5,-W/2)
E.BackgroundColor3 = Color3.fromRGB(250,190,0)
E.Text = "➖"
E.TextColor3 = Color3.fromRGB(30,20,0)
E.Font = Enum.Font.GothamBold 
E.TextSize = c and 11 or 16 
E.Parent = p
Instance.new("UICorner",E).CornerRadius = UDim.new(1,0)

local G = Instance.new("TextButton")
G.Size = UDim2.new(0,W,0,W)
G.Position = UDim2.new(1,-(W+6),.5,-W/2)
G.BackgroundColor3 = Color3.fromRGB(240,50,60)
G.Text = "✖️"
G.TextColor3 = Color3.new(1,1,1)
G.Font = Enum.Font.GothamBold 
G.TextSize = c and 14 or 11 
G.Parent = p
Instance.new("UICorner",G).CornerRadius = UDim.new(1,0)

local f = Instance.new("Frame")
f.Name = "Sidebar"
f.Size = UDim2.new(0,O,1,-j)
f.Position = UDim2.new(0,0,0,j)
f.BackgroundColor3 = Color3.fromRGB(11,11,18)
f.BorderSizePixel = 0 
f.Parent = Y
Instance.new("UICorner",f).CornerRadius = UDim.new(0,16)

local ra = Instance.new("Frame")
ra.Size = UDim2.new(0,1,1,-j)
ra.Position = UDim2.new(0,O,0,j)
ra.BackgroundColor3 = Color3.fromRGB(70,30,140)
ra.BorderSizePixel = 0 
ra.Parent = Y 
local ia = Instance.new("UIGradient",ra)
ia.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(70,30,140)), ColorSequenceKeypoint.new(.5,Color3.fromRGB(130,60,220)), ColorSequenceKeypoint.new(1,Color3.fromRGB(70,30,140))})
ia.Rotation = 90 
w.SideDivider = ra 
w.DivGrad = ia 

local xa = Instance.new("UIListLayout")
xa.Padding = UDim.new(0,c and 4 or 5)
xa.SortOrder = Enum.SortOrder.LayoutOrder 
xa.HorizontalAlignment = Enum.HorizontalAlignment.Center 
xa.Parent = f 

local Ka = Instance.new("UIPadding",f)
Ka.PaddingTop = UDim.new(0,c and 8 or 12)
Ka.PaddingLeft = UDim.new(0,c and 4 or 7)
Ka.PaddingRight = UDim.new(0,c and 4 or 7)

local za = {}
local function Qa(r,i,x)
    local K = Instance.new("TextButton")
    K.Size = UDim2.new(1,0,0,c and 38 or 40)
    K.LayoutOrder = x 
    K.BackgroundColor3 = Color3.fromRGB(20,18,32)
    K.Text = c and i..("\n"..r) or i..("  "..r)
    K.TextColor3 = Color3.fromRGB(120,110,150)
    K.Font = Enum.Font.GothamBold 
    K.TextSize = y 
    K.TextXAlignment = c and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left 
    K.TextWrapped = true 
    K.Parent = f
    Instance.new("UICorner",K).CornerRadius = UDim.new(0,9)
    local z = Instance.new("UIStroke",K)
    z.Color = Color3.fromRGB(50,30,90)
    z.Thickness = 1 
    z.Transparency = .6 
    if not c then 
        local r = Instance.new("UIPadding",K)
        r.PaddingLeft = UDim.new(0,10)
    end 
    table.insert(za,{btn=K,stroke=z})
    return K 
end 

local function Ta(r)
    for r,i in pairs(za) do 
        i.btn.BackgroundColor3 = Color3.fromRGB(20,18,32)
        i.btn.TextColor3 = Color3.fromRGB(120,110,150)
        i.stroke.Color = Color3.fromRGB(50,30,90)
        i.stroke.Transparency = .6 
    end 
    local i = Z[X] and Z[X].activeTab or Color3.fromRGB(65,20,150)
    local x = Z[X] and Z[X].accent or Color3.fromRGB(150,80,255)
    r.BackgroundColor3 = i 
    r.TextColor3 = Color3.new(1,1,1)
    for i,K in pairs(za) do 
        if K.btn == r then 
            K.stroke.Color = x 
            K.stroke.Transparency = .1 
        end 
    end 
end 

local Fa = Qa("MAIN","⚡",1)
local ca = Qa("FAKE","🎭",2)
local aa = Qa("UTIL","🔧",3)
local Da = Qa("TP","🎋",4)
local Oa = O+7 

local ja = Instance.new("Frame")
ja.Size = UDim2.new(1,-(Oa+4),1,-(j+6))
ja.Position = UDim2.new(0,Oa,0,j+4)
ja.BackgroundTransparency = 1 
ja.Parent = Y 

local ya = Instance.new("ImageButton")
ya.Name = "DexterMiniIcon"
ya.Size = UDim2.new(0,c and 35 or 52,0,c and 35 or 52)
ya.Position = UDim2.new(0,10,.5,-26)
ya.BackgroundColor3 = Color3.fromRGB(55,15,130)
ya.Image = "rbxassetid://99683372434053"
ya.Visible = false 
ya.BorderSizePixel = 0 
ya.Parent = m
Instance.new("UICorner",ya).CornerRadius = UDim.new(0,14)

local da = Instance.new("UIStroke",ya)
da.Color = Color3.fromRGB(150,80,255)
da.Thickness = 2 
da.Transparency = .1 
w.MiniIcon = ya 
w.MiniIconStroke = da 

local qa = 0 
E.MouseButton1Click:Connect(function()
    L()
    Y.Visible = false 
    P.Visible = false 
    s.Visible = false 
    ya.Visible = true 
    qa = 0 
end)

local na,ba,ua 
ya.InputBegan:Connect(function(r)
    if not b(r) then return end 
    na = true 
    qa = 0 
    ba = r.Position 
    ua = ya.Position 
    r.Changed:Connect(function() if r.UserInputState == Enum.UserInputState.End then na = false end end)
end)

ya.InputEnded:Connect(function(r)
    if r.UserInputType == Enum.UserInputType.Touch then 
        na = false 
        local i = ba and (r.Position-ba).Magnitude or 999 
        if i <= 12 then 
            L()
            Y.Visible = true 
            P.Visible = true 
            s.Visible = true 
            ya.Visible = false 
        end 
        qa = 0 
    end 
end)

ya.MouseButton1Click:Connect(function()
    if c then return end 
    if qa > 10 then qa = 0 return end 
    L()
    Y.Visible = true 
    P.Visible = true 
    s.Visible = true 
    ya.Visible = false 
    qa = 0 
end)

local function La()
    local r = Instance.new("ScrollingFrame")
    r.Size = UDim2.new(1,0,1,0)
    r.BackgroundTransparency = 1 
    r.Visible = false 
    r.ScrollBarThickness = 0 
    r.Parent = ja 
    return r 
end 

local Ra = La()
Ra.CanvasSize = UDim2.new(0,0,0,0)
Ra.AutomaticCanvasSize = Enum.AutomaticSize.Y 
Ra.ScrollBarThickness = c and 3 or 2 
Ra.ScrollBarImageColor3 = Color3.fromRGB(150,80,255)
Ra.ScrollBarImageTransparency = 0 
Ra.ScrollingDirection = Enum.ScrollingDirection.Y 

local va = La()
local Ma = La()
local Aa = La()
va.ScrollingDirection = Enum.ScrollingDirection.Y 

local ea = Instance.new("UIListLayout")
ea.Padding = UDim.new(0,8)
ea.SortOrder = Enum.SortOrder.LayoutOrder 
ea.Parent = Aa 
Aa.CanvasSize = UDim2.new(0,0,0,0)
Aa.AutomaticCanvasSize = Enum.AutomaticSize.Y 
Aa.ScrollBarThickness = c and 3 or 2 
Aa.ScrollBarImageColor3 = Color3.fromRGB(150,80,255)
Aa.ScrollBarImageTransparency = 0 
Aa.ScrollingDirection = Enum.ScrollingDirection.Y 

local Za = Instance.new("UIPadding",Aa)
Za.PaddingLeft = UDim.new(0,6)
Za.PaddingRight = UDim.new(0,6)
Za.PaddingTop = UDim.new(0,8)
Za.PaddingBottom = UDim.new(0,10)

local Xa = Instance.new("UIListLayout")
Xa.Padding = UDim.new(0,8)
Xa.SortOrder = Enum.SortOrder.LayoutOrder 
Xa.Parent = Ma 
Ma.CanvasSize = UDim2.new(0,0,0,0)
Ma.AutomaticCanvasSize = Enum.AutomaticSize.Y 
Ma.ScrollBarThickness = c and 3 or 2 
Ma.ScrollBarImageColor3 = Color3.fromRGB(150,80,255)
Ma.ScrollBarImageTransparency = 0 
Ma.ScrollingDirection = Enum.ScrollingDirection.Y 

local function wa(r)
    Ra.Visible = false 
    va.Visible = false 
    Ma.Visible = false 
    Aa.Visible = false 
    r.Visible = true 
end 

wa(Ra)
Ta(Fa)

Fa.MouseButton1Click:Connect(function() wa(Ra) Ta(Fa) L() end)
ca.MouseButton1Click:Connect(function() wa(va) Ta(ca) L() end)
aa.MouseButton1Click:Connect(function() wa(Ma) Ta(aa) L() end)
Da.MouseButton1Click:Connect(function() wa(Aa) Ta(Da) L() end)

local ka = false 
local ma = true 
local Pa = true 
local Ya = .03 
local sa = .08 
local Na = .15 
local Sa = .5 
local ta = .02 
local oa = .06 
local ga = 1 
local Ia = 2.5 
local Ba = false 
local la = {"wkwk", "receh", "noob", "lemah", "kasian", "santuy", "ezz", "wkwk", "lol", "mudah"}
local pa = {IF={}, X={}, NG={}, AI={}, KS={}, CY={}, UI={}, ["SEMUA KATA SULIT"]={}}
local Ca = {IF=false, X=false, NG=false, AI=false, KS=false, CY=false, UI=false, ["SEMUA KATA SULIT"]=false}

local Ja = Instance.new("UIListLayout")
Ja.Padding = UDim.new(0, c and 5 or 7)
Ja.SortOrder = Enum.SortOrder.LayoutOrder 
Ja.Parent = Ra 

local Ha = Instance.new("UIPadding",Ra)
Ha.PaddingLeft = UDim.new(0,5)
Ha.PaddingRight = UDim.new(0,5)
Ha.PaddingTop = UDim.new(0,5)
Ha.PaddingBottom = UDim.new(0,10)

local function Ua(r,i)
    local K = c and 48 or 42 
    local z = (28+4*K)+6 
    local Q = Instance.new("Frame")
    Q.Size = UDim2.new(1,-4,0,z)
    Q.LayoutOrder = i 
    Q.BackgroundColor3 = Color3.fromRGB(12,11,20)
    Q.BorderSizePixel = 0 
    Q.Parent = r
    Instance.new("UICorner",Q).CornerRadius = UDim.new(0,11)
    
    local T = Instance.new("UIStroke",Q)
    T.Color = Color3.fromRGB(60,30,110)
    T.Thickness = 1 
    T.Transparency = .3 
    
    local F = Instance.new("Frame")
    F.Size = UDim2.new(1,0,0,26)
    F.BackgroundColor3 = Color3.fromRGB(20,16,36)
    F.BorderSizePixel = 0 
    F.Parent = Q
    Instance.new("UICorner",F).CornerRadius = UDim.new(0,11)
    
    local a = Instance.new("Frame")
    a.Size = UDim2.new(1,0,.5,0)
    a.Position = UDim2.new(0,0,.5,0)
    a.BackgroundColor3 = Color3.fromRGB(20,16,36)
    a.BorderSizePixel = 0 
    a.Parent = F 
    
    local D = Instance.new("TextLabel")
    D.Size = UDim2.new(1,-12,1,0)
    D.Position = UDim2.new(0,12,0,0)
    D.BackgroundTransparency = 1 
    D.Text = "⚡  SPEED SETTINGS"
    D.TextColor3 = Color3.fromRGB(180,140,255)
    D.Font = Enum.Font.GothamBold 
    D.TextSize = 10 
    D.TextXAlignment = Enum.TextXAlignment.Left 
    D.Parent = F 
    
    local O = {
        {icon="⌨", label="NULIS", minV=.01, maxV=1, defMin=.19, defMax=.37, dec=2, suf="s", cbMin=function(r) Ya=r end, cbMax=function(r) sa=r end},
        {icon="⏱", label="DELAY GILIRAN", minV=.1, maxV=5, defMin=1.5, defMax=2.5, dec=1, suf="s", cbMin=function(r) ga=r end, cbMax=function(r) Ia=r end},
        {icon="⏎", label="ENTER", minV=.01, maxV=3, defMin=.2, defMax=.5, dec=2, suf="s", cbMin=function(r) Na=r end, cbMax=function(r) Sa=r end},
        {icon="🗑", label="DELETE", minV=.01, maxV=1, defMin=.2, defMax=.3, dec=2, suf="s", cbMin=function(r) ta=r end, cbMax=function(r) oa=r end}
    }
    
    for r,i in ipairs(O) do i.cbMin(i.defMin) i.cbMax(i.defMax) end 
    local j = c and 16 or 11 
    local y = c and 20 or 12 
    
    for r,i in ipairs(O) do 
        local z = 28+(r-1)*K 
        local T = Instance.new("Frame")
        T.Size = UDim2.new(1,-10,0,K-4)
        T.Position = UDim2.new(0,5,0,z)
        T.BackgroundColor3 = r%2==0 and Color3.fromRGB(16,14,26) or Color3.fromRGB(13,12,22)
        T.BorderSizePixel = 0 
        T.Parent = Q
        Instance.new("UICorner",T).CornerRadius = UDim.new(0,7)
        
        local F = Instance.new("TextLabel")
        F.Size = UDim2.new(0,55,0,14)
        F.Position = UDim2.new(0,8,0,4)
        F.BackgroundTransparency = 1 
        F.Text = i.icon..(" "..i.label)
        F.TextColor3 = Color3.fromRGB(170,155,210)
        F.Font = Enum.Font.GothamBold 
        F.TextSize = c and 8 or 9 
        F.TextXAlignment = Enum.TextXAlignment.Left 
        F.Parent = T 
        
        local a = "%."..(i.dec.."f")
        local D = Instance.new("TextLabel")
        D.Size = UDim2.new(0,90,0,14)
        D.Position = UDim2.new(1,-94,0,4)
        D.BackgroundTransparency = 1 
        D.Font = Enum.Font.GothamBold 
        D.TextSize = c and 8 or 9 
        D.TextXAlignment = Enum.TextXAlignment.Right 
        D.Parent = T 
        
        local O,d = i.defMin,i.defMax 
        local function q()
            D.Text = string.format(a,O)..(" ~ "..(string.format(a,d)..i.suf))
            local r = Z[X]
            D.TextColor3 = r and r.logText or Color3.fromRGB(150,100,255)
        end 
        q()
        
        local n = c and 32 or 26 
        local b = c and 6 or 4 
        local u = Instance.new("Frame")
        u.Size = UDim2.new(1,-16,0,b)
        u.Position = UDim2.new(0,8,0,n)
        u.BackgroundColor3 = Color3.fromRGB(30,25,50)
        u.BorderSizePixel = 0 
        u.Parent = T
        Instance.new("UICorner",u).CornerRadius = UDim.new(1,0)
        
        local L = Instance.new("Frame")
        L.BackgroundColor3 = Color3.fromRGB(120,60,220)
        L.BorderSizePixel = 0 
        L.Parent = u
        Instance.new("UICorner",L).CornerRadius = UDim.new(1,0)
        
        local R = Instance.new("Frame")
        R.Size = UDim2.new(0,j,0,j)
        R.BackgroundColor3 = Color3.new(1,1,1)
        R.BorderSizePixel = 0 
        R.ZIndex = 3 
        R.Parent = u
        Instance.new("UICorner",R).CornerRadius = UDim.new(1,0)
        
        local v = Instance.new("UIStroke",R)
        v.Color = Color3.fromRGB(150,80,255)
        v.Thickness = 1.5 
        
        local M = Instance.new("Frame")
        M.Size = UDim2.new(0,j,0,j)
        M.BackgroundColor3 = Color3.fromRGB(180,120,255)
        M.BorderSizePixel = 0 
        M.ZIndex = 3 
        M.Parent = u
        Instance.new("UICorner",M).CornerRadius = UDim.new(1,0)
        
        local A = Instance.new("UIStroke",M)
        A.Color = Color3.fromRGB(200,150,255)
        A.Thickness = 1.5 
        
        local function e(r)
            local x = 10^i.dec 
            return math.floor(r*x+.5)/x 
        end 
        
        local k = j/2 
        local function m()
            local r = (O-i.minV)/(i.maxV-i.minV)
            local x = (d-i.minV)/(i.maxV-i.minV)
            L.Position = UDim2.new(r,0,0,0)
            L.Size = UDim2.new(x-r,0,1,0)
            R.Position = UDim2.new(r,-k,.5,-k)
            M.Position = UDim2.new(x,-k,.5,-k)
            q()
        end 
        m()
        
        local P = Instance.new("TextButton")
        P.Size = UDim2.new(1,0,0,y*2)
        P.Position = UDim2.new(0,0,.5,-y)
        P.BackgroundTransparency = 1 
        P.Text = ""
        P.ZIndex = 4 
        P.Parent = u 
        
        local Y,s = false,false 
        local function N(r)
            local i = u.AbsolutePosition.X 
            local x = u.AbsoluteSize.X 
            return math.clamp((r-i)/x,0,1)
        end 
        
        local function S(r) return e(i.minV+r*(i.maxV-i.minV)) end 
        
        P.InputBegan:Connect(function(r)
            if r.UserInputType ~= Enum.UserInputType.MouseButton1 and r.UserInputType ~= Enum.UserInputType.Touch then return end 
            local i = S(N(r.Position.X))
            if math.abs(i-O) <= math.abs(i-d) then Y = true else s = true end 
        end)
        
        x.InputChanged:Connect(function(r)
            if r.UserInputType ~= Enum.UserInputType.MouseMovement and r.UserInputType ~= Enum.UserInputType.Touch then return end 
            if not (Y or s) then return end 
            local x = S(N(r.Position.X))
            local K = 1/10^i.dec 
            if Y then 
                O = math.clamp(x,i.minV,d-K)
                i.cbMin(O)
            else 
                d = math.clamp(x,O+K,i.maxV)
                i.cbMax(d)
            end 
            m()
        end)
        
        x.InputEnded:Connect(function(r)
            if r.UserInputType == Enum.UserInputType.MouseButton1 or r.UserInputType == Enum.UserInputType.Touch then 
                Y = false 
                s = false 
            end 
        end)
        table.insert(w,{fill=L, knobMinStroke=v, knobMaxStroke=A, valLbl=D, knobMax=M})
    end 
    return Q 
end 

local function Va(r,i,x,K,z)
    local Q = Instance.new("Frame")
    Q.Size = UDim2.new(1,-4,0,d)
    Q.LayoutOrder = z 
    Q.BackgroundColor3 = Color3.fromRGB(16,15,24)
    Q.BorderSizePixel = 0 
    Q.Parent = i
    Instance.new("UICorner",Q).CornerRadius = UDim.new(0,9)
    
    local T = Instance.new("UIStroke",Q)
    T.Color = Color3.fromRGB(55,30,100)
    T.Thickness = 1 
    T.Transparency = .4 
    
    local F = Instance.new("TextLabel")
    F.Size = UDim2.new(1,-60,1,0)
    F.Position = UDim2.new(0,10,0,0)
    F.BackgroundTransparency = 1 
    F.Text = r 
    F.TextColor3 = Color3.fromRGB(210,200,230)
    F.Font = Enum.Font.GothamBold 
    F.TextSize = q 
    F.TextXAlignment = Enum.TextXAlignment.Left 
    F.Parent = Q 
    
    local a = c and 48 or 44 
    local D = c and 26 or 22 
    local O = Instance.new("Frame")
    O.Size = UDim2.new(0,a,0,D)
    O.Position = UDim2.new(1,-(a+6),.5,-D/2)
    O.BackgroundColor3 = x and Color3.fromRGB(30,180,110) or Color3.fromRGB(180,40,50)
    O.BorderSizePixel = 0 
    O.Parent = Q
    Instance.new("UICorner",O).CornerRadius = UDim.new(1,0)
    
    local j = c and 20 or 16 
    local y = Instance.new("Frame")
    y.Size = UDim2.new(0,j,0,j)
    y.Position = x and UDim2.new(1,-(j+3),.5,-j/2) or UDim2.new(0,3,.5,-j/2)
    y.BackgroundColor3 = Color3.new(1,1,1)
    y.BorderSizePixel = 0 
    y.Parent = O
    Instance.new("UICorner",y).CornerRadius = UDim.new(1,0)
    
    local n = Instance.new("TextButton")
    n.Size = UDim2.new(1,0,1,0)
    n.BackgroundTransparency = 1 
    n.Text = ""
    n.Parent = Q 
    
    local b = x 
    n.MouseButton1Click:Connect(function()
        b = not b 
        O.BackgroundColor3 = b and Color3.fromRGB(30,180,110) or Color3.fromRGB(180,40,50)
        y.Position = b and UDim2.new(1,-(j+3),.5,-j/2) or UDim2.new(0,3,.5,-j/2)
        L()
        K(b)
    end)
    return Q 
end 

local ha 
Va("AUTO TULIS",Ra,false,function(r) ka=r if ka then task.wait(.3) ha() end end,1)
Va("AUTO ENTER",Ra,true,function(r) ma=r end,2)
Va("AUTO REJOIN",Ra,true,function(r) Pa=r end,3)
Ua(Ra,31)
Va("🧠 MANUSIA [PERCOBAAN]",Ra,false,function(r) Ba=r end,32)

local Wa = Instance.new("TextButton")
Wa.Size = UDim2.new(1,-4,0,d)
Wa.LayoutOrder = 4 
Wa.BackgroundColor3 = Color3.fromRGB(65,20,145)
Wa.Text = "⚔  SET KATA SULIT ▼"
Wa.TextColor3 = Color3.new(1,1,1)
Wa.Font = Enum.Font.GothamBold 
Wa.TextSize = q 
Wa.Parent = Ra
Instance.new("UICorner",Wa).CornerRadius = UDim.new(0,9)

local Ea = Instance.new("UIGradient",Wa)
Ea.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(90,30,190)), ColorSequenceKeypoint.new(1,Color3.fromRGB(50,15,120))})

local Ga = Instance.new("Frame")
Ga.Size = UDim2.new(1,-4,0,0)
Ga.BackgroundColor3 = Color3.fromRGB(14,13,22)
Ga.ClipsDescendants = true 
Ga.BorderSizePixel = 0 
Ga.Parent = Ra 
Ga.LayoutOrder = 5 

local fa = Instance.new("UIStroke",Ga)
fa.Color = Color3.fromRGB(80,35,160)
fa.Thickness = 1 
fa.Transparency = .3 

local r_ = c and 37 or 33 
local function i_()
    for r,i in pairs(Ga:GetChildren()) do 
        if i:IsA("TextButton") then i:Destroy() end 
    end 
    local r = {"IF","X","NG","AI","CY","UI","KS","SEMUA KATA SULIT"}
    for r,i in ipairs(r) do 
        local x = Instance.new("TextButton")
        x.Size = UDim2.new(1,-12,0,c and 32 or 28)
        x.Position = UDim2.new(0,6,0,(r-1)*r_+5)
        local K = Ca["SEMUA KATA SULIT"] and i~="SEMUA KATA SULIT"
        local z = Ca[i]
        x.BackgroundColor3 = K and Color3.fromRGB(25,22,36) or z and Color3.fromRGB(80,30,170) or Color3.fromRGB(28,25,42)
        x.Text = (z and "✓  " or "   ")..(i..(z and "  [ON]" or ""))
        x.TextColor3 = K and Color3.fromRGB(70,65,90) or z and Color3.new(1,1,1) or Color3.fromRGB(160,150,190)
        x.Font = Enum.Font.GothamBold 
        x.TextSize = q 
        x.TextXAlignment = Enum.TextXAlignment.Left 
        x.Parent = Ga
        Instance.new("UICorner",x).CornerRadius = UDim.new(0,7)
        
        local Q = Instance.new("UIPadding",x)
        Q.PaddingLeft = UDim.new(0,8)
        if z then 
            local r = Instance.new("UIStroke",x)
            r.Color = Color3.fromRGB(130,70,220)
            r.Thickness = 1 
            r.Transparency = .2 
        end 
        
        local T = Instance.new("TextLabel")
        T.Size = UDim2.new(0,60,1,0)
        T.Position = UDim2.new(1,-64,0,0)
        T.BackgroundTransparency = 1 
        local F = #(pa[i] or {})
        T.Text = F>0 and F.." kata" or "loading..."
        T.TextColor3 = K and Color3.fromRGB(60,55,80) or Color3.fromRGB(120,100,180)
        T.Font = Enum.Font.Gotham 
        T.TextSize = c and 8 or 9 
        T.TextXAlignment = Enum.TextXAlignment.Right 
        T.ZIndex = x.ZIndex+1 
        T.Parent = x 
        
        x.MouseButton1Click:Connect(function()
            if K then return end 
            L()
            if i=="SEMUA KATA SULIT" then 
                Ca["SEMUA KATA SULIT"] = not Ca["SEMUA KATA SULIT"]
                if Ca["SEMUA KATA SULIT"] then 
                    Ca.IF=false Ca.X=false Ca.NG=false Ca.AI=false Ca.CY=false Ca.UI=false Ca.KS=false 
                end 
            else 
                Ca[i] = not Ca[i]
            end 
            i_()
        end)
    end 
end 

w.DropMainBtn = Wa 
w.dropBtnGrad = Ea 
w.dropStroke = fa 
w.ScrollBar = Ra 

local x_ = false 
Wa.MouseButton1Click:Connect(function()
    L()
    x_ = not x_ 
    Wa.Text = x_ and "⚔  SET KATA SULIT ▲" or "⚔  SET KATA SULIT ▼"
    Ga:TweenSize(UDim2.new(1,-4,0,x_ and 8*r_+10 or 0),"Out","Quart",.3,true)
    i_()
end)

local K_ = Instance.new("Frame")
K_.Size = UDim2.new(1,-4,0,c and 55 or 50)
K_.LayoutOrder = 10 
K_.BackgroundColor3 = Color3.fromRGB(12,10,20)
K_.BorderSizePixel = 0 
K_.Parent = Ra
Instance.new("UICorner",K_).CornerRadius = UDim.new(0,9)

local z_ = Instance.new("UIStroke",K_)
z_.Color = Color3.fromRGB(80,40,140)
z_.Thickness = 1 
z_.Transparency = .4 
w.logStroke = z_ 

local Q_ = Instance.new("TextLabel")
Q_.Size = UDim2.new(1,-12,0,22)
Q_.Position = UDim2.new(0,8,0,4)
Q_.BackgroundTransparency = 1 
Q_.Text = "AWALAN: -"
Q_.TextColor3 = Color3.fromRGB(160,100,255)
Q_.Font = Enum.Font.GothamBold 
Q_.TextSize = c and 10 or 11 
Q_.TextXAlignment = Enum.TextXAlignment.Left 
Q_.Parent = K_ 
w.LogAwalan = Q_ 

local T_ = Instance.new("TextLabel")
T_.Size = UDim2.new(1,-12,0,24)
T_.Position = UDim2.new(0,8,0,26)
T_.BackgroundTransparency = 1 
T_.Text = "-"
T_.TextColor3 = Color3.fromRGB(230,230,255)
T_.Font = Enum.Font.GothamBold 
T_.TextSize = c and 14 or 16 
T_.TextXAlignment = Enum.TextXAlignment.Left 
T_.Parent = K_ 

local F_ = Instance.new("UIPadding",va)
F_.PaddingLeft = UDim.new(0,6)
F_.PaddingRight = UDim.new(0,6)
F_.PaddingTop = UDim.new(0,8)

local c_ = Instance.new("TextLabel")
c_.Size = UDim2.new(1,0,0,18)
c_.Position = UDim2.new(0,0,0,0)
c_.BackgroundTransparency = 1 
c_.Text = "GANTI NAMA TAMPILAN"
c_.TextColor3 = Color3.fromRGB(120,80,200)
c_.Font = Enum.Font.GothamBold 
c_.TextSize = 10 
c_.TextXAlignment = Enum.TextXAlignment.Left 
c_.Parent = va 

local a_ = Instance.new("TextBox")
a_.Size = UDim2.new(1,0,0,c and 44 or 38)
a_.Position = UDim2.new(0,0,0,24)
a_.BackgroundColor3 = Color3.fromRGB(18,16,28)
a_.PlaceholderText = "Masukkan Nama Palsu..."
a_.Text = ""
a_.TextColor3 = Color3.new(1,1,1)
a_.Font = Enum.Font.GothamBold 
a_.TextSize = q+1 
a_.PlaceholderColor3 = Color3.fromRGB(90,80,120)
a_.Parent = va
Instance.new("UICorner",a_).CornerRadius = UDim.new(0,9)

local D_ = Instance.new("UIStroke",a_)
D_.Color = Color3.fromRGB(90,45,180)
D_.Thickness = 1.5 
D_.Transparency = .2 

local O_ = Instance.new("UIPadding",a_)
O_.PaddingLeft = UDim.new(0,12)

local j_ = c and 76 or 68 
local y_ = Instance.new("TextButton")
y_.Size = UDim2.new(1,0,0,c and 44 or 38)
y_.Position = UDim2.new(0,0,0,j_)
y_.BackgroundColor3 = Color3.fromRGB(60,130,240)
y_.Text = "✏️ TERAPKAN NAMA"
y_.TextColor3 = Color3.new(1,1,1)
y_.Font = Enum.Font.GothamBold 
y_.TextSize = q+1 
y_.Parent = va
Instance.new("UICorner",y_).CornerRadius = UDim.new(0,9)

local d_ = Instance.new("UIGradient",y_)
d_.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(80,150,255)), ColorSequenceKeypoint.new(1,Color3.fromRGB(40,90,200))})

local q_ = j_+(c and 52 or 46)
local n_ = Instance.new("TextLabel")
n_.Size = UDim2.new(1,0,0,50)
n_.Position = UDim2.new(0,0,0,q_)
n_.BackgroundTransparency = 1 
n_.Text = "⚠  Nama palsu hanya terlihat visual.\nJika tidak berhasil, coba rejoin server."
n_.TextColor3 = Color3.fromRGB(120,115,150)
n_.Font = Enum.Font.Gotham 
n_.TextSize = 10 
n_.TextWrapped = true 
n_.TextXAlignment = Enum.TextXAlignment.Left 
n_.Parent = va 

local b_ = Instance.new("UIPadding",Ma)
b_.PaddingLeft = UDim.new(0,6)
b_.PaddingRight = UDim.new(0,6)
b_.PaddingTop = UDim.new(0,8)

local function u_(r,i,x)
    local K = Instance.new("TextButton")
    K.Size = UDim2.new(1,0,0,c and 42 or 38)
    K.LayoutOrder = x 
    K.BackgroundColor3 = Color3.fromRGB(18,16,26)
    K.Text = r 
    K.TextColor3 = Color3.fromRGB(200,190,220)
    K.Font = Enum.Font.GothamBold 
    K.TextSize = q 
    K.Parent = Ma
    Instance.new("UICorner",K).CornerRadius = UDim.new(0,9)
    local z = Instance.new("UIStroke",K)
    z.Color = Color3.fromRGB(70,35,130)
    z.Thickness = 1 
    z.Transparency = .4 
    K.MouseButton1Click:Connect(function() L() i() end)
    return K 
end 

local L_ = {}
local R_ = ""
local v_ = 0 
local M_ = {"abadi", "abai", "abang", "abdi", "abu", "acara", "ada", "adab", "adang", "adat", "adik", "adil", "adu", "agama", "agar", "agen", "agung", "ahad", "ahli", "aib", "air", "ajak", "ajar", "aju", "akad", "akal", "akan", "akar", "akhir", "akhlak", "akibat", "akta", "aktif", "aku", "akun", "akurat", "alam", "alami", "alang", "alasan", "alat", "album", "alfa", "algojo", "ali", "alias", "alih", "alim", "alir", "aliran", "alis", "alkali", "alkitab", "alkohol", "allah", "alpa", "alu", "alun", "alur", "aluran", "amal", "aman", "baca", "badan", "bagaimana", "baik", "banyak", "baru", "bawa", "bawah", "bebas", "belum", "benar", "bentuk", "besar", "biasa", "bisa", "bukan", "bulan", "bumi", "burung", "cahaya", "cinta", "coba", "dalam", "dan", "dapat", "dari", "datang", "dekat", "dengan", "depan", "di", "dia", "diri", "dua", "dulu", "dunia", "uhuk", "uhuy", "bca", "yanto", "ilang", "oho", "aiba", "eni", "ungik", "aqua", "aikido"}

local function A_(r,i)
    if not F then return end 
    v_ = i or #r 
    if Ba then 
        local i = math.random(1,2)
        local x = 0 
        if x<i and math.random()<.3 then 
            x = x+1 
            task.wait(math.random()*.8+.3)
        end 
        local z = 1 
        while z<=#r do 
            if not F then return end 
            if x<i and (z>1 and math.random()<.12) then 
                x = x+1 
                task.wait(math.random()*.6+.2)
            end 
            if x<i and math.random()<.08 then 
                x = x+1 
                local r = "qwertyuiopasdfghjklzxcvbnm"
                local i = math.random(1,2)
                for i=1,i,1 do 
                    local x = math.random(1,#r)
                    local z = string.upper(string.sub(r,x,x))
                    local Q = Enum.KeyCode[z]
                    if Q then 
                        K:SendKeyEvent(true,Q,false,game)
                        task.wait(.01)
                        K:SendKeyEvent(false,Q,false,game)
                        task.wait(Ya+math.random()*(sa-Ya))
                    end 
                end 
                task.wait(.1+math.random()*.2)
                for r=1,i,1 do 
                    K:SendKeyEvent(true,Enum.KeyCode.Backspace,false,game)
                    task.wait(.03)
                    K:SendKeyEvent(false,Enum.KeyCode.Backspace,false,game)
                    task.wait(.04)
                end 
            end 
            if x<i and math.random()<.1 then 
                x = x+1 
                local r = "qwertyuiopasdfghjklzxcvbnm"
                local i = math.random(1,#r)
                local z = string.upper(string.sub(r,i,i))
                local Q = Enum.KeyCode[z]
                if Q then 
                    K:SendKeyEvent(true,Q,false,game)
                    task.wait(.01)
                    K:SendKeyEvent(false,Q,false,game)
                    task.wait(Ya+math.random()*(sa-Ya))
                    task.wait(.08+math.random()*.15)
                    K:SendKeyEvent(true,Enum.KeyCode.Backspace,false,game)
                    task.wait(.03)
                    K:SendKeyEvent(false,Enum.KeyCode.Backspace,false,game)
                    task.wait(.05+math.random()*.1)
                end 
            end 
            local Q = string.upper(string.sub(r,z,z))
            local T = Enum.KeyCode[Q]
            if T then 
                K:SendKeyEvent(true,T,false,game)
                task.wait(.01)
                K:SendKeyEvent(false,T,false,game)
                task.wait(Ya+math.random()*(sa-Ya))
            end 
            z = z+1 
        end 
        if x<i and math.random()<.15 then 
            x = x+1 
            local i = la[math.random(1,#la)]
            task.wait(.2+math.random()*.3)
            for r=1,#i,1 do 
                local x = string.upper(string.sub(i,r,r))
                local z = Enum.KeyCode[x]
                if z then 
                    K:SendKeyEvent(true,z,false,game)
                    task.wait(.01)
                    K:SendKeyEvent(false,z,false,game)
                    task.wait(Ya*.7+(math.random()*sa)*.5)
                end 
            end 
            task.wait(.15+math.random()*.2)
            for r=1,#i,1 do 
                K:SendKeyEvent(true,Enum.KeyCode.Backspace,false,game)
                task.wait(.03)
                K:SendKeyEvent(false,Enum.KeyCode.Backspace,false,game)
                task.wait(.03)
            end 
            task.wait(.1+math.random()*.2)
            for i=1,#r,1 do 
                local x = string.upper(string.sub(r,i,i))
                local z = Enum.KeyCode[x]
                if z then 
                    K:SendKeyEvent(true,z,false,game)
                    task.wait(.01)
                    K:SendKeyEvent(false,z,false,game)
                    task.wait(Ya+math.random()*(sa-Ya))
                end 
            end 
        end 
    else 
        for i=1,#r,1 do 
            local x = string.upper(string.sub(r,i,i))
            local z = Enum.KeyCode[x]
            if z then 
                K:SendKeyEvent(true,z,false,game)
                task.wait(.01)
                K:SendKeyEvent(false,z,false,game)
                task.wait(Ya+math.random()*(sa-Ya))
            end 
        end 
    end 
    if ma then 
        task.wait(Na+math.random()*(Sa-Na))
        K:SendKeyEvent(true,Enum.KeyCode.Return,false,game)
        K:SendKeyEvent(false,Enum.KeyCode.Return,false,game)
    end 
end 

local e_ = false 
local Z_ = false 
ha = function()
    if not ka or not F or e_ then return end 
    e_ = true 
    local r = z:WaitForChild("PlayerGui")
    local i = r:FindFirstChild("MatchUI",true)
    local x = ""
    if i then 
        for r,i in pairs(i:GetDescendants()) do 
            if (i.Name=="WordServer" or i.Name=="Word") and (i:IsA("TextLabel") and i.Visible) then 
                local r = (i.Text:gsub("%s+","")):lower()
                if #r>=1 and #r<=4 then x=r end 
            end 
        end 
    end 
    if x~="" then 
        Q_.Text = "AWALAN: "..x:upper()
        local r = {}
        local i = {}
        for r,K in pairs(Ca) do 
            if K then 
                for r,K in ipairs(pa[r]) do 
                    if string.sub(K,1,#x)==x and (not L_[K] and #K>#x) then table.insert(i,K) end 
                end 
            end 
        end 
        if #i>0 then r=i end 
        if #r==0 then 
            for i,K in ipairs(M_) do 
                if string.sub(K,1,#x)==x and (not L_[K] and #K>#x) then table.insert(r,K) end 
            end 
        end 
        if #r>0 then 
            local i = r[math.random(1,#r)]
            local K = "KBBI (SEMUA)"
            for r,x in pairs(Ca) do 
                if x and table.find(pa[r],i) then 
                    K = "KATA SULIT ("..(r..")")
                    break 
                end 
            end 
            print("🤖 DexterHUB: "..(i:upper()..(" | Awalan: "..(x:upper()..(" | "..K)))))
            T_.Text = i:upper()
            R_ = i 
            A_(string.sub(i,#x+1),#i)
            L_[i] = true 
            task.wait(1)
            Q_.Text = "AWALAN: -"
            T_.Text = "-"
        end 
    end 
    task.wait(.5)
    e_ = false 
end 

task.spawn(function()
    local r = {
        IF="https://raw.githubusercontent.com/DexterHUB99/DexterHUB/refs/heads/main/IF.txt",
        X="https://raw.githubusercontent.com/DexterHUB99/DexterHUB/refs/heads/main/X.txt",
        NG="https://raw.githubusercontent.com/DexterHUB99/DexterHUB/refs/heads/main/NG.txt",
        AI="https://raw.githubusercontent.com/DexterHUB99/DexterHUB/refs/heads/main/AI.txt",
        ["SEMUA KATA SULIT"]="https://raw.githubusercontent.com/DexterHUB99/DexterHUB/refs/heads/main/sulit.txt",
        CY="https://raw.githubusercontent.com/DexterHUB99/DexterHUB/refs/heads/main/CY.txt",
        UI="https://raw.githubusercontent.com/DexterHUB99/DexterHUB/refs/heads/main/UI.txt",
        KS="https://raw.githubusercontent.com/DexterHUB99/DexterHUB/refs/heads/main/KS.txt"
    }
    for r,i in pairs(r) do 
        task.spawn(function()
            local x,K = pcall(function() return game:HttpGet(i) end)
            if x and type(K)=="string" then 
                for i in string.gmatch(K,"[^\r\n]+") do 
                    local x = (i:gsub("%s+","")):lower()
                    if #x>1 and string.match(x,"^%a+$") then table.insert(pa[r],x) end 
                end 
                print("🔥 Category "..(r.." Loaded!"))
            end 
        end)
    end 
end)

local function X_(r)
    for i=#r,2,-1 do 
        local x = math.random(i)
        r[i],r[x] = r[x],r[i]
    end 
end 

task.spawn(function()
    local r = {
        "https://raw.githubusercontent.com/DexterHUB99/Cari-Kata/refs/heads/main/kamus.txt",
        "https://cdn.jsdelivr.net/gh/geovedi/indonesian-wordlist@master/00-indonesian-wordlist.lst",
        "https://raw.githubusercontent.com/geovedi/indonesian-wordlist/master/00-indonesian-wordlist.lst"
    }
    local i = {}
    for r,x in ipairs(r) do 
        if not F then break end 
        local K,z = pcall(function() return game:HttpGet(x) end)
        if K and (type(z)=="string" and #z>1000) then 
            for r in string.gmatch(z,"[^\r\n]+") do 
                local x = (r:gsub("%s+","")):lower()
                if #x>1 and string.match(x,"^%a+$") then table.insert(i,x) end 
            end 
        end 
    end 
    if #i>1000 then 
        for r,i in ipairs(i) do table.insert(M_,i) end 
        X_(M_)
        print("✅ DexterHUB: "..(#M_.." Kata Dimuat!"))
    end 
end)

local function w_()
    pcall(function()
        local r = workspace.CurrentCamera.ViewportSize 
        K:SendMouseButtonEvent(r.X/2,r.Y/2,0,true,game,0)
        task.wait(.05)
        K:SendMouseButtonEvent(r.X/2,r.Y/2,0,false,game,0)
    end)
end 

local function k_()
    if not Pa or Z_ then return end 
    Z_ = true 
    task.wait(1)
    w_()
    task.spawn(function()
        local r = z:WaitForChild("PlayerGui")
        while Z_ and F do 
            if not Pa then Z_=false break end 
            local i = r:FindFirstChild("MatchUI",true)
            if i and i.Enabled==true then 
                Z_ = false 
                if ka then task.wait(1.5) ha() end 
                break 
            end 
            pcall(function()
                K:SendKeyEvent(true,Enum.KeyCode.E,false,game)
                task.wait(.02)
                K:SendKeyEvent(false,Enum.KeyCode.E,false,game)
            end)
            task.wait(.15)
        end 
    end)
end 

local m_ = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("MatchUI")
local function P_()
    local r = v_+1 
    for r=1,r,1 do 
        K:SendKeyEvent(true,Enum.KeyCode.Backspace,false,game)
        task.wait(ta+math.random()*(oa-ta))
        K:SendKeyEvent(false,Enum.KeyCode.Backspace,false,game)
    end 
    v_ = 0 
    task.wait(.1)
end 

m_.OnClientEvent:Connect(function(r)
    if not F then return end 
    if r=="StartTurn" or r=="YourTurn" then 
        Z_ = false 
        if not e_ then task.wait(ga+math.random()*(Ia-ga)) ha() end 
    elseif r=="Eliminated" or r=="EndMatch" or r=="HideMatchUI" then 
        Q_.Text = "AWALAN: -"
        T_.Text = "-"
        k_()
    elseif r=="Mistake" and ka then 
        local r = z:WaitForChild("PlayerGui")
        local i = r:FindFirstChild("MatchUI",true)
        if i then 
            local r = i:FindFirstChild("WordSubmit",true)
            if r and (r.Visible and r.BackgroundTransparency<.6) then 
                if R_~="" then L_[R_]=true end 
                print("⚠️ DexterHUB: Salah! Menghapus & Cari Baru...")
                e_ = true 
                P_()
                e_ = false 
                ha()
            end 
        end 
    end 
end)

local Y_ = ""
local function s_(r)
    local i = z.Character 
    if i and i:FindFirstChild("Humanoid") then 
        i.Humanoid.DisplayName = r 
        for i,x in pairs(i:GetDescendants()) do 
            if x:IsA("TextLabel") and (x.Text==z.Name or x.Text==z.DisplayName or x.Text==Y_) then x.Text=r end 
        end 
        Y_ = r 
        print("🎭 Fake Name \'"..(r.."\' diterapkan!"))
    end 
end 

y_.MouseButton1Click:Connect(function() s_(a_.Text) L() end)
a_.FocusLost:Connect(function(r) if r then L() s_(a_.Text) end end)

local N_,S_ 
local t_ = Instance.new("TextButton")
t_.Size = UDim2.new(1,-(W*2+30),1,0)
t_.Position = UDim2.new(0,0,0,0)
t_.BackgroundTransparency = 1 
t_.Text = ""
t_.ZIndex = 5 
t_.Parent = p 

local o_,g_ 
t_.InputBegan:Connect(function(r)
    if not b(r) then return end 
    o_ = r.Position 
    g_ = Y.Position 
    r.Changed:Connect(function() if r.UserInputState == Enum.UserInputState.End then o_ = nil end end)
end)

x.InputChanged:Connect(function(r)
    if not u(r) then return end 
    if t then 
        local i = r.Position-o 
        local x,K = B(g+i.X,I+i.Y)
        Y.Size = UDim2.new(0,x,0,K)
        l()
        return 
    end 
    if o_ then 
        local i = r.Position-o_ 
        local x = UDim2.new(g_.X.Scale,g_.X.Offset+i.X,g_.Y.Scale,g_.Y.Offset+i.Y)
        Y.Position = x 
        P.Position = UDim2.new(x.X.Scale,x.X.Offset-2,x.Y.Scale,x.Y.Offset-2)
        S()
        return 
    end 
    if na then 
        local i = r.Position-ba 
        qa = i.Magnitude 
        ya.Position = UDim2.new(ua.X.Scale,ua.X.Offset+i.X,ua.Y.Scale,ua.Y.Offset+i.Y)
    end 
end)

x.InputEnded:Connect(function(r) if b(r) then t = false end end)

local I_ = false 
local B_ 
local function l_(r)
    I_ = r 
    if I_ then 
        B_ = game:GetService("RunService").Stepped:Connect(function()
            if z.Character then 
                for r,i in pairs(z.Character:GetDescendants()) do 
                    if i:IsA("BasePart") then i.CanCollide = false end 
                end 
            end 
        end)
    else 
        if B_ then B_:Disconnect() end 
    end 
end 

local p_ = Instance.new("TextButton")
p_.Size = UDim2.new(1,0,0,c and 42 or 38)
p_.LayoutOrder = 0 
p_.BackgroundColor3 = Color3.fromRGB(25,22,38)
p_.Text = "🎨  TEMA: CYBERPUNK ▼"
p_.TextColor3 = Color3.new(1,1,1)
p_.Font = Enum.Font.GothamBold 
p_.TextSize = q 
p_.Parent = Ma
Instance.new("UICorner",p_).CornerRadius = UDim.new(0,9)

local C_ = Instance.new("UIStroke",p_)
C_.Color = Color3.fromRGB(150,80,255)
C_.Thickness = 1.5 
C_.Transparency = .2 

local J_ = Instance.new("Frame")
J_.Size = UDim2.new(1,0,0,0)
J_.BackgroundColor3 = Color3.fromRGB(14,13,22)
J_.ClipsDescendants = true 
J_.BorderSizePixel = 0 
J_.LayoutOrder = 1 
J_.Parent = Ma
Instance.new("UICorner",J_).CornerRadius = UDim.new(0,9)

local H_ = Instance.new("UIStroke",J_)
H_.Color = Color3.fromRGB(70,35,130)
H_.Thickness = 1 
H_.Transparency = .4 

local U_ = {
    CYBERPUNK=Color3.fromRGB(150,80,255), CRIMSON=Color3.fromRGB(255,80,100), MATRIX=Color3.fromRGB(50,255,120),
    SAKURA=Color3.fromRGB(255,130,200), OCEAN=Color3.fromRGB(60,160,255), FLAME=Color3.fromRGB(255,160,50)
}
local V_ = {"CYBERPUNK", "CRIMSON", "MATRIX", "SAKURA", "OCEAN", "FLAME"}
local h_ = false 
local W_ = c and 40 or 35 

local function E_()
    for r,i in pairs(J_:GetChildren()) do 
        if i:IsA("Frame") or i:IsA("TextButton") then i:Destroy() end 
    end 
    for r,i in ipairs(V_) do 
        local x = Instance.new("Frame")
        x.Size = UDim2.new(1,-12,0,c and 34 or 30)
        x.Position = UDim2.new(0,6,0,(r-1)*W_+5)
        x.BackgroundColor3 = X==i and Color3.fromRGB(30,25,50) or Color3.fromRGB(20,18,30)
        x.BorderSizePixel = 0 
        x.Parent = J_
        Instance.new("UICorner",x).CornerRadius = UDim.new(0,7)
        if X==i then 
            local r = Instance.new("UIStroke",x)
            r.Color = U_[i]
            r.Thickness = 1 
            r.Transparency = .2 
        end 
        local K = Instance.new("Frame")
        K.Size = UDim2.new(0,10,0,10)
        K.Position = UDim2.new(0,10,.5,-5)
        K.BackgroundColor3 = U_[i]
        K.BorderSizePixel = 0 
        K.Parent = x
        Instance.new("UICorner",K).CornerRadius = UDim.new(1,0)
        
        local z = Instance.new("TextLabel")
        z.Size = UDim2.new(1,-50,1,0)
        z.Position = UDim2.new(0,28,0,0)
        z.BackgroundTransparency = 1 
        z.Text = i..(X==i and "  ✓" or "")
        z.TextColor3 = X==i and U_[i] or Color3.fromRGB(180,170,200)
        z.Font = Enum.Font.GothamBold 
        z.TextSize = q 
        z.TextXAlignment = Enum.TextXAlignment.Left 
        z.Parent = x 
        
        local Q = Instance.new("TextButton")
        Q.Size = UDim2.new(1,0,1,0)
        Q.BackgroundTransparency = 1 
        Q.Text = ""
        Q.Parent = x 
        Q.MouseButton1Click:Connect(function()
            L()
            k(i)
            p_.Text = "🎨  TEMA: "..(i.." ▼")
            C_.Color = U_[i]
            H_.Color = U_[i]
            E_()
        end)
    end 
end 

p_.MouseButton1Click:Connect(function()
    L()
    h_ = not h_ 
    p_.Text = "🎨  TEMA: "..(X..(h_ and " ▲" or " ▼"))
    J_:TweenSize(UDim2.new(1,0,0,h_ and #V_*W_+10 or 0),"Out","Quart",.3,true)
    E_()
end)

local G_ = Instance.new("Frame")
G_.Size = UDim2.new(1,0,0,1)
G_.BackgroundColor3 = Color3.fromRGB(40,35,60)
G_.BorderSizePixel = 0 
G_.LayoutOrder = 2 
G_.Parent = Ma 

u_("💀  RESPAWN",function() z.Character:BreakJoints() end,3)
u_("⭕  REJOIN SERVER",function() game:GetService("TeleportService"):Teleport(game.PlaceId,z) end,4)
Va("NOCLIP",Ma,false,function(r) l_(r) end,5)

local f_ = nil 
local rI = Instance.new("TextButton")
rI.Size = UDim2.new(1,0,0,c and 42 or 38)
rI.LayoutOrder = 6 
rI.BackgroundColor3 = Color3.fromRGB(25,22,38)
rI.Text = "🎋  SKIN BAMBU: (pilih) ▼"
rI.TextColor3 = Color3.new(1,1,1)
rI.Font = Enum.Font.GothamBold 
rI.TextSize = q 
rI.Parent = Ma
Instance.new("UICorner",rI).CornerRadius = UDim.new(0,9)

local iI = Instance.new("UIGradient",rI)
iI.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(90,30,190)), ColorSequenceKeypoint.new(1,Color3.fromRGB(50,15,120))})

local xI = Instance.new("UIStroke",rI)
xI.Color = Color3.fromRGB(150,80,255)
xI.Thickness = 1.5 
xI.Transparency = .2 

local KI = Instance.new("Frame")
KI.Size = UDim2.new(1,0,0,0)
KI.BackgroundColor3 = Color3.fromRGB(14,13,22)
KI.ClipsDescendants = true 
KI.BorderSizePixel = 0 
KI.LayoutOrder = 7 
KI.Parent = Ma
Instance.new("UICorner",KI).CornerRadius = UDim.new(0,9)

local zI = Instance.new("UIStroke",KI)
zI.Color = Color3.fromRGB(70,35,130)
zI.Thickness = 1 
zI.Transparency = .4 

local QI = Instance.new("TextLabel")
QI.Size = UDim2.new(1,-12,0,20)
QI.Position = UDim2.new(0,8,1,6)
QI.BackgroundTransparency = 1 
QI.Text = "Status: belum pilih skin"
QI.TextColor3 = Color3.fromRGB(160,100,255)
QI.Font = Enum.Font.GothamBold 
QI.TextSize = 10 
QI.TextXAlignment = Enum.TextXAlignment.Left 
QI.Parent = Ma 
QI.LayoutOrder = 8 

w.SkinDropBtn = rI 
w.SkinDropGrad = iI 
w.SkinDropStroke = xI 
w.SkinFrameStroke = zI 
w.SkinInfoText = QI 

local TI = c and 40 or 34 
local FI = false 
local function cI()
    for r,i in pairs(KI:GetChildren()) do 
        if i:IsA("Frame") or i:IsA("TextButton") or i:IsA("TextLabel") then i:Destroy() end 
    end 
    for r,i in ipairs(R) do 
        local x = Instance.new("Frame")
        x.Size = UDim2.new(1,-12,0,c and 34 or 30)
        x.Position = UDim2.new(0,6,0,(r-1)*TI+6)
        x.BackgroundColor3 = f_==i.name and Color3.fromRGB(30,25,50) or Color3.fromRGB(20,18,30)
        x.BorderSizePixel = 0 
        x.Parent = KI
        Instance.new("UICorner",x).CornerRadius = UDim.new(0,7)
        
        if f_==i.name then 
            local r = Instance.new("UIStroke",x)
            r.Color = i.color 
            r.Thickness = 1 
            r.Transparency = .2 
        end 
        
        local K = Instance.new("Frame")
        K.Size = UDim2.new(0,10,0,10)
        K.Position = UDim2.new(0,10,.5,-5)
        K.BackgroundColor3 = i.color 
        K.BorderSizePixel = 0 
        K.Parent = x
        Instance.new("UICorner",K).CornerRadius = UDim.new(1,0)
        
        local z = Instance.new("TextLabel")
        z.Size = UDim2.new(1,-140,1,0)
        z.Position = UDim2.new(0,28,0,0)
        z.BackgroundTransparency = 1 
        z.Text = i.label..(f_==i.name and "  ✓" or "")
        z.TextColor3 = f_==i.name and i.color or Color3.fromRGB(200,190,220)
        z.Font = Enum.Font.GothamBold 
        z.TextSize = q 
        z.TextXAlignment = Enum.TextXAlignment.Left 
        z.Parent = x 
        
        local Q = Instance.new("TextLabel")
        Q.Size = UDim2.new(0,105,1,0)
        Q.Position = UDim2.new(1,-110,0,0)
        Q.BackgroundTransparency = 1 
        Q.Text = i.rarity 
        Q.TextColor3 = v[i.rarity] or Color3.fromRGB(180,180,180)
        Q.Font = Enum.Font.GothamBold 
        Q.TextSize = 10 
        Q.TextXAlignment = Enum.TextXAlignment.Right 
        Q.Parent = x 
        
        local T = Instance.new("TextButton")
        T.Size = UDim2.new(1,0,1,0)
        T.BackgroundTransparency = 1 
        T.Text = ""
        T.Parent = x 
        T.MouseButton1Click:Connect(function()
            L()
            f_ = i.name 
            rI.Text = "🎋  SKIN BAMBU: "..(i.label.." ▼")
            QI.Text = "Status: Terpilih "..(i.label.." | "..i.rarity)
            QI.TextColor3 = v[i.rarity] or Z[X] and Z[X].logText or Color3.new(1,1,1)
            e(i.name)
            cI()
        end)
    end 
end 

rI.MouseButton1Click:Connect(function()
    L()
    FI = not FI 
    rI.Text = "🎋  SKIN BAMBU: "..((f_ and f_:gsub("^Bambu","") or "(pilih)")..(FI and " ▲" or " ▼"))
    KI:TweenSize(UDim2.new(1,0,0,FI and #R*TI+12 or 0),"Out","Quart",.25,true)
    cI()
end)

local function aI(r,i,x)
    local K = Instance.new("TextButton")
    K.Size = UDim2.new(1,0,0,c and 42 or 38)
    K.LayoutOrder = x 
    K.BackgroundColor3 = Color3.fromRGB(18,16,26)
    K.Text = r 
    K.TextColor3 = Color3.fromRGB(200,190,220)
    K.Font = Enum.Font.GothamBold 
    K.TextSize = q 
    K.Parent = Aa
    Instance.new("UICorner",K).CornerRadius = UDim.new(0,9)
    local Q = Instance.new("UIStroke",K)
    Q.Color = Color3.fromRGB(70,35,130)
    Q.Thickness = 1 
    Q.Transparency = .4 
    K.MouseButton1Click:Connect(function()
        L()
        local r = workspace:FindFirstChild(i)
        if not r then print("⚠️ "..(i.." tidak ditemukan!")) return end 
        local x 
        for r,i in ipairs(r:GetDescendants()) do 
            if i:IsA("BasePart") then x=i break end 
        end 
        if not x then print("⚠️ Tidak ada BasePart di "..(i.."!")) return end 
        local K = z.Character and z.Character:FindFirstChild("HumanoidRootPart")
        if K then 
            K.CFrame = CFrame.new(x.Position+Vector3.new(0,5,0))
            print("⚡ TP ke "..i)
        end 
    end)
    return K 
end 

aI("🎋  BAMBU LAVA","ParkourBambu2",1)
aI("🏠  Lobby","MainSpawn",2)

k(X)
G.MouseButton1Click:Connect(function() m:Destroy() F=false end)

task.spawn(function()
    while task.wait() do 
        if not F then break end 
        h.TextColor3 = Color3.fromHSV((tick()%5)/5,.7,1)
    end 
end)
