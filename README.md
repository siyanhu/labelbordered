# labelbordered
A label with border for both attributed and non - attributed texts.

Example code for using:

        UIFont *font = [self getFont];
        LabelBordered *textLabel = [[BorderedLabel alloc]initWithFrame:CGRectMake(0, 0, 2000, 2000)];
        [textLabel setTitle:str font:font titleColor:[UIColor darkGrayColor]];
        [textLabel setNumberOfLines:0];
        [textLabel setTextAlignment:NSTextAlignmentCenter];
        [textLabel sizeToFit];
        
        [self.view setFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, textLabel.frame.size.width, textLabel.frame.size.height)];
        [self.view addSubview:textLabel];
